class QuizQuestion {
  final String text;
  final List<Map<String, String>> answers;

  QuizQuestion(this.text, this.answers);

  List<String> getShuffledAnswers() {
    final shuffledAnswers = answers.toList();
    shuffledAnswers.shuffle();
    return shuffledAnswers.map((answer) => answer.keys.first).toList();
  }

  String getAnswerHouse(String answer) {
    return answers
        .firstWhere((element) => element.keys.first == answer)
        .values
        .first;
  }
}
