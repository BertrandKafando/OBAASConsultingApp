import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/Home/bottomBar.dart';

class SolutionsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nos projets"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
        ListView.builder(
        // scrollDirection: Axis.vertical,
        scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount:projects.length ,
          itemBuilder: (context, index) {
            return buildCard(projects[index].image, projects[index].description,projects[index].name);
          },
        ),

          ],
        ),
      ),
      bottomNavigationBar: BotttomBar(),
    );
  }

}


class Project {
  int id;
  String image;
  String description;
  String name;
  List<String>madeby=[];

  Project(this.id,this.image, this.description, this.name, this.madeby);
}

List<Project>projects=[
  new Project(0,"assets/images/pr1.png","c’est un projet de boulangerie ....ddfd","BoulangIS MANAGER",["flutter","windev"]),
  new Project(1,"assets/images/pr2.png","c’est un projet de boulangerie ....ddfd","SKOLARIS",["flutter","windev"]),
  new Project(2,"assets/images/pr3.png","c’est un projet de boulangerie ....ddfd","BoulangIS MANAGER",["flutter","windev"]),
];




Card buildCard(image,description,titre) {

  var cardImage =  AssetImage(image);
  var supportingText =
      'Beautiful home to rent, recently refurbished with modern appliances...';
  return Card(
      elevation: 4.0,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Text(titre,style: TextStyle(fontWeight: FontWeight.bold)),
          ),


          Container(
            width: 120,
        alignment: Alignment.topLeft,
            child: Ink.image(
              image: cardImage,
              fit: BoxFit.fill,
              width: 120,
              height: 120,
            ),
          ),
          Container(
            // padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(description),
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: Text("flutter---Windev  ",style: TextStyle(fontSize: 15,color: Colors.blue),),

          ),
        ],
      ));
}






//liste des images
class CardListView extends StatelessWidget {
  const CardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, right: 25.0, bottom: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CardCaroussel (
                "projects",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                "8 min away"),
            CardCaroussel (
                "Italian ",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Restaurant%20Image.png?alt=media&token=43509b4c-269e-4279-8c88-36dc9ed27a66",
                "12 min away"),
            CardCaroussel(
                "Vegan",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                "15 min away"),
          ],
        ),
      ),
    );
  }
}

class CardCaroussel extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;

  CardCaroussel(this.text, this.imageUrl, this.subtitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 15),
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.05)),
          ],
        ),
        child: Column(
          children: [
            Image.network(imageUrl, height: 70, fit: BoxFit.cover),
            Spacer(),
            Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 12),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
