part of quiz_redux;

class AskQuestionAction extends _ImmutableClass {
  final QuizQuestion question;
  AskQuestionAction(this.question);

  @override
  String toString() => 'AskQuestionAction(${question.toString()})';
}

class ReturnToMenuAction extends _ImmutableClass {
  @override
  String toString() => 'ReturnToMenuAction()';
}

class ShowAnswerAction extends _ImmutableClass {
  @override
  String toString() => 'ShowAnswerAction()';
}
