import 'package:over_react/over_react.dart';
import 'package:redux/redux.dart';

import 'package:quiz_project/src/redux.dart';
import 'package:quiz_project/src/ui/views/answer_view.dart';
import 'package:quiz_project/src/ui/views/menu_view.dart';
import 'package:quiz_project/src/ui/views/question_view.dart';

@Factory()
UiFactory<AppUiProps> AppUi;

@Props()
class AppUiProps extends UiProps {
  @requiredProp
  Store<QuizAppState> store;
}

@Component()
class AppUiComponent extends UiComponent<AppUiProps> {
  @override
  void componentWillMount() {
    super.componentWillMount();

    // Redraw the component every time the store's state changes.
    listenToStream<QuizAppState>(props.store.onChange, (_) {
      redraw();
    });
  }

  @override
  ReactElement render() {
    switch (props.store.state.activeView) {
      case QuizView.menuView:
        return (MenuViewUi()..store = props.store)();
      case QuizView.questionView:
        return (QuestionViewUi()..store = props.store)();
      case QuizView.answerView:
        return (AnswerViewUi()..store = props.store)();
      default:
        return Dom.div()(
          props.store.state.toString(),
        );
    }
  }
}
