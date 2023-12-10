class CardImageList {
  List<String> _cardTitles = [];

  List<String> get cardTitles => _cardTitles;

  void addCard(String title) {
    _cardTitles.add(title);
  }
}

final cardImageList = CardImageList();
