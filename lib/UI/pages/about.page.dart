import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/Home/bottomBar.dart';

class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // text1
              Text( " OBAAS Consulting est une entreprise d’ingénierie Statistique et "
                  "Informatique spécialisée dans les enquêtes statistiques, les études de marchés, les sondages d’opinion, "
                  "le développement et l’intégration des solutions informatiques (open –sources et propriétaires), la formation et le conseil." ,style: TextStyle(fontWeight: FontWeight.bold),),

              Text("Entreprise de droit burkinabè, OBAAS Consulting offre aux entreprises et porteurs de projets des services spécifiques à leurs besoins ainsi que les outils nécessaires à leur prise de décision."
                  "OBAAS Consulting a pour ambition de permettre à tous les porteurs de projets de bâtir leurs projets sur des bases solides et réalistes en leur offrant des données fiables avec une interprétation rigoureuse, des outils et équipements innovants pour accélérer leur développement."
                  "Le fonctionnement de OBAAS Consulting est assuré au quotidien par une équipe dynamique et compétente, appuyée dans ses missions par un pool de consultants nationaux et internationaux.",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 20),),

            Image(image:  AssetImage("assets/images/qui.png"),),

            ],
          ),

      ),
      bottomNavigationBar: BotttomBar(),
    );
  }

}