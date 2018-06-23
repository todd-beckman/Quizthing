import 'package:over_react/over_react.dart';
import 'package:redux/redux.dart';

import 'package:quiz_project/src/redux.dart';
import 'package:quiz_project/src/ui/components/simple_components.dart';

const String _cssPrefix = 'question-view';

@Factory()
UiFactory<QuestionViewProps> QuestionViewUi;

@Props()
class QuestionViewProps extends UiProps {
  @requiredProp
  Store<QuizAppState> store;
}

@State()
class QuestionViewState extends UiState {
  bool showHint;
}

@Component()
class QuestionViewUiComponent
    extends UiStatefulComponent<QuestionViewProps, QuestionViewState> {
  @override
  QuestionViewState getInitialState() => newState()..showHint = false;

  @override
  ReactElement render() {
    return (Dom.div()..className = '$_cssPrefix app-view')(
      questionBlock(props.store.state.activeQuestion.question),
      state.showHint
          ? hintBlock(props.store.state.activeQuestion.hint)
          : showHintBlock(() => setState(newState()..showHint = true)),
      showQuizButton(
        'Show Answer',
        () => props.store.dispatch(new ShowAnswerAction()),
      ),
    );
  }
}
