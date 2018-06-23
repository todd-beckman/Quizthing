import 'package:over_react/over_react.dart';
import 'package:redux/redux.dart';

import 'package:quiz_project/src/redux.dart';

@Factory()
UiFactory<MenuItemProps> MenuItem;

@Props()
class MenuItemProps extends UiProps {
  QuizQuestion question;
  Store<QuizAppState> store;
}

@Component()
class MenuItemComponent extends UiComponent<MenuItemProps> {
  @override
  ReactElement render() {
    return (Dom.button()
      ..className =
          'menu-question-box menu-question-box__${props.question.difficulty}'
      ..onClick =
          (_) => props.store.dispatch(new AskQuestionAction(props.question)))(
      props.question.difficulty,
    );
  }
}
