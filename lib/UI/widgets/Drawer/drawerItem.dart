import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawElement extends StatelessWidget{
  String path;
  IconData pathicon;
  String pathname;

  DrawElement(this.path, this.pathicon, this.pathname,);

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      onTap: (){
        Navigator.pushNamed(context, path);
      },
      leading: Icon(pathicon,color: Colors.white,),
      title: Text(pathname,style: TextStyle(fontSize: 20,color:Colors.white),),
    );
  }

}