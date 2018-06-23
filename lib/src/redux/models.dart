part of quiz_redux;

enum QuizView {
  menuView,
  questionView,
  answerView,
}

@immutable

/// An immutable class which enforces all subclasses are immutable.
class _ImmutableClass {}

class QuizQuestion extends _ImmutableClass {
  final String question;
  final String answer;
  final String hint;
  final int difficulty;
  final String imageUri;

  QuizQuestion({
    @required this.question,
    @required this.answer,
    @required this.difficulty,
    @required this.hint,
    this.imageUri,
  });

  @override
  String toString() => 'QuizQuestion('
      'question: $question,'
      'answer: $answer,'
      'hint: $hint,'
      'difficulty: $difficulty)';
}

class QuizGroup extends _ImmutableClass {
  final String name;
  final List<QuizQuestion> questions;
  QuizGroup({
    @required this.name,
    @required this.questions,
  });
}
