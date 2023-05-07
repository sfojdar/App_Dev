class questions1 {
  const questions1(this.q, this.ans);
  final String q;
  final List<String> ans;
  List<String> shuffled_Ans() {
    var shuffledList = List.of(ans);
    shuffledList.shuffle();
    return shuffledList;
  }
}
