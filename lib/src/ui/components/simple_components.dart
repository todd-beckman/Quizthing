import 'package:over_react/over_react.dart';

ReactElement questionBlock(String question) {
  return showQuizButton(question, () {});
}

ReactElement answerBlock(String answer) {
  return showQuizButton('Answer: $answer', () {});
}

ReactElement showHintBlock(void callback()) {
  return showQuizButton('Show Hint', callback);
}

ReactElement hintBlock(String hint) {
  return showQuizButton('(Hint: $hint)', () {});
}

ReactElement showQuizButton(String label, void callback()) {
  return (Dom.button()
    ..className = 'quiz-button'
    ..onClick = (_) => callback())(
    label,
  );
}
