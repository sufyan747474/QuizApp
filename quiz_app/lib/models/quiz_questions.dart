class QuizQuestions {
  const QuizQuestions(
    this.text,
    this.answers,
  );

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    final shuffleddList = List.of(answers);
    shuffleddList.shuffle();
    return shuffleddList;
  }
}
