part of quiz_redux;

Reducer<QuizAppState> quizAppReducer = combineReducers<QuizAppState>([
  new TypedReducer<QuizAppState, AskQuestionAction>(askQuestionReducer),
  new TypedReducer<QuizAppState, ReturnToMenuAction>(returnToMenuReducer),
  new TypedReducer<QuizAppState, ShowAnswerAction>(showAnswerReducer),
]);

QuizAppState askQuestionReducer(
  QuizAppState state,
  AskQuestionAction action,
) {
  return state.update(
    activeView: QuizView.questionView,
    activeQuestion: action.question,
  );
}

QuizAppState returnToMenuReducer(
    QuizAppState state, ReturnToMenuAction action) {
  return state.update(
    activeView: QuizView.menuView,
    resetQuestion: true,
  );
}

QuizAppState showAnswerReducer(QuizAppState state, ShowAnswerAction action) {
  return state.update(
    activeView: QuizView.answerView,
  );
}
