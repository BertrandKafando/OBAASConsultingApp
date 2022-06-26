import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../pages/home.page.dart';

class BotttomBar extends StatefulWidget{
  @override
  State<BotttomBar> createState() => _BotttomBarState();
}

class _BotttomBarState extends State<BotttomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                  text: "Home",
                  icon: Icons.home,
                  selected: _selectedIndex == 0,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  }),
              IconBottomBar(
                  text: "Services",
                  icon: Icons.design_services,
                  selected: _selectedIndex == 1,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  }),
              IconBottomBar(
                  text: "projets",
                  icon: Icons.work,
                  selected: _selectedIndex == 2,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  }),
              IconBottomBar(
                  text: "Contact",
                  icon: Icons.contacts,
                  selected: _selectedIndex == 3,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}