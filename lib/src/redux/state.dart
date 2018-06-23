part of quiz_redux;

class QuizAppState extends _ImmutableClass {
  final QuizView activeView;
  final QuizQuestion activeQuestion;
  final List<QuizGroup> groups;

  QuizAppState({
    this.activeView = QuizView.menuView,
    this.groups,
    this.activeQuestion,
  });

  QuizAppState update({
    QuizView activeView,
    QuizQuestion activeQuestion,
    bool resetQuestion: false,
  }) =>
      new QuizAppState(
        activeView: activeView ?? this.activeView,
        groups: groups,
        activeQuestion: resetQuestion ? null : activeQuestion ?? this.activeQuestion,
      );

  @override
  String toString() => 'QuizAppState('
      'activeView: ${activeView.toString()},'
      'question: ${activeQuestion.toString()})';
}
