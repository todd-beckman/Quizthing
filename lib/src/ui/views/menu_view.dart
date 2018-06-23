import 'package:over_react/over_react.dart';
import 'package:redux/redux.dart';

import 'package:quiz_project/src/redux.dart';
import 'package:quiz_project/src/ui/components/menu_item.dart';

const String _cssPrefix = 'menu-view';

@Factory()
UiFactory<MenuViewUiProps> MenuViewUi;

@Props()
class MenuViewUiProps extends UiProps {
  @requiredProp
  Store<QuizAppState> store;
}

@Component()
class MenuViewUiComponent extends UiComponent<MenuViewUiProps> {
  @override
  ReactElement render() {
    final List groups =
        props.store.state.groups.map<ReactElement>(_groupFactory).toList();
    return (Dom.div()..className = '$_cssPrefix app-view')(
      groups,
    );
  }

  ReactElement _groupFactory(QuizGroup group) {
    final List questions =
        group.questions.map<ReactElement>(_questionFactory).toList();
    return (Dom.div()
      ..key = group.name
      ..className = '${_cssPrefix}__group')(
      (Dom.p()..className = '${_cssPrefix}__group-name')(
        group.name,
      ),
      questions,
    );
  }

  ReactElement _questionFactory(QuizQuestion question) {
    return (MenuItem()
      ..key = question.question
      ..question = question
      ..store = props.store)();
  }
}
