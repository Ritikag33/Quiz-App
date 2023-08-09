class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get shuffledAnswers{
    //Creates  a new list based on another list
    //since shuffle does not reassigns but edit an already existing value so it can be final
    final shuffledList=List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}