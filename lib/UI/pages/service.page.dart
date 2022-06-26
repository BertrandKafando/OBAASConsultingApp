import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/Home/bottomBar.dart';

class ServicePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            //informatique
            TextTitle(text: 'Ingénierie Informatique',),
            //Génie Logiciel
            TextElement(text: 'Génie Logiciel',),
            //Site web dynamique
            TextElement(text: 'Site web dynamique',),
            //Intégration Open Source
            TextElement(text: 'Intégration Open Source',),



            //Statistique
            TextTitle(text: 'Ingénierie Statistique',),
            //Enquetes statistiques
            TextElement(text: 'Enquetes statistiques',),
            //Etudes de Marché
            TextElement(text: 'Etudes de Marché',),
            //Analyse des données de sondages
            TextElement(text: 'Analyse des données de sondages',),



            //Formation & Conseils
            TextTitle(text: 'Formation & Conseils',),
            //Formations
            TextElement(text: 'Formations',),
            //Business Consulting
            TextElement(text: 'Business Consulting',),
            //Suivi & Evaluation
            TextElement(text: 'Suivi & Evaluation',),



          ],
        ),
      ),
      bottomNavigationBar: BotttomBar(),
    );
  }

}

class TextTitle extends StatelessWidget {
  final String text;
  const TextTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.black26,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                 ))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text, style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
          onPressed: () => {},
        ));
  }
}



class TextElement extends StatelessWidget {
  final String text;
  const TextElement({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        margin: const EdgeInsets.only(top: 5,bottom: 5),
        padding: EdgeInsets.only(left: 60,right: 60 ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      width: 1,
                      color: Colors.blue
                  )
              ))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text, style: TextStyle(color: Colors.black, fontSize: 12)),
            ],
          ),
          onPressed: () => {},
        ));
  }
}
