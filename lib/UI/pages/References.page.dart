
import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class ReferencesPage extends StatelessWidget {



  final List<Widget> fancyCards = [
    FancyCard(
      image: Image.network("data:image/png;base64,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"),
      title: "APADE!",
    ),
    FancyCard(
      image: Image.asset("assets/images/pr1.png"),
      title: "Don't be sad!",
    ),
    FancyCard(
      image: Image.asset("assets/images/pr1.png"),
      title: "Go for a walk!",
    ),
    FancyCard(
      image: Image.asset("assets/images/pr1.png"),
      title: "Try teleportation!",
    ),
    FancyCard(
      image: Image.asset("assets/images/pr1.png"),
      title: "Enjoy your coffee!",
    ),
    FancyCard(
      image: Image.asset("assets/images/pr1.png"),
      title: "Play with your cat!",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("References"),
      ),
      body: StackedCardCarousel(
        items: fancyCards,
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}

class FancyCard extends StatelessWidget {
  const FancyCard({
     required this.image,
  required this.title,}
  );

  final Image image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              child: image,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
            OutlineButton(
              child: const Text("Learn more"),
              onPressed: () => print("Button was tapped"),
            ),
          ],
        ),
      ),
    );
  }
}