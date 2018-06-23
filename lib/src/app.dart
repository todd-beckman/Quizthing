import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

import 'redux.dart';
import 'ui/ui.dart';

class QuizApp {
  Store<QuizAppState> _store;
  QuizApp({
    @required List<QuizGroup> groups,
  }) {
    _store = new Store<QuizAppState>(
      quizAppReducer,
      initialState: new QuizAppState(groups: groups),
    );
  }

  dynamic content() => (AppUi()..store = _store)();
}
