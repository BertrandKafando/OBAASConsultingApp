
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawerItem.dart';

class AppDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor:  Color(0xff4338CA),
      child: ListView(
        children: [
          Center(child: Text ("OBAAS Consulting",style: TextStyle(color: Colors.white,fontSize: 20)),),
          SizedBox(height: 20,),
          DrawElement("/", Icons.home, "Home" ),
          DrawElement("/about", Icons.read_more ,"Qui sommes-nous ?"),
          DrawElement("/services", Icons.design_services, "Nos services"),
          DrawElement("/projets",Icons.work, "Nos solutions développés"),
          DrawElement("/reference",Icons.data_usage, "Nos References"),
          DrawElement("/contact",Icons.contacts, "Nous Contacter"),
        ],
      ),
    );
  }

}