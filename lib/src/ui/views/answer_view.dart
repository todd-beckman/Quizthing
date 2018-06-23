import 'package:over_react/over_react.dart';
import 'package:redux/redux.dart';

import 'package:quiz_project/src/redux.dart';
import 'package:quiz_project/src/ui/components/simple_components.dart';

const String _cssPrefix = 'answer-view';

@Factory()
UiFactory<AnswerViewUiProps> AnswerViewUi;

@Props()
class AnswerViewUiProps extends UiProps {
  @requiredProp
  Store<QuizAppState> store;
}

@Component()
class AnswerViewUiComponent extends UiComponent<AnswerViewUiProps> {
  @override
  ReactElement render() {
    return (Dom.div()..className = '$_cssPrefix app-view')(
      questionBlock(props.store.state.activeQuestion.question),
      answerBlock(props.store.state.activeQuestion.answer),
      showQuizButton(
        'Back To Menu',
        () => props.store.dispatch(new ReturnToMenuAction()),
      ),
    );
  }
}
