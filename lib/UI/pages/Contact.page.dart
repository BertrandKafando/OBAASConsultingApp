import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/Home/bottomBar.dart';
import '../widgets/contact/contactForm.dart';
import 'home.page.dart';

class ContactPage extends StatefulWidget {
  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  int _selectedIndex = 0;
  TextEditingController inputcontroller = new TextEditingController();
  TextEditingController messagecontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nous Contacter"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          //padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Address(),
              //email
              EmailInputFieldFb3(inputcontroller),

              //message
              Container(
                padding: EdgeInsets.only(left: 50,right: 50),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Entrer votre message',
                  ),
                  controller: messagecontroller,
                ),
              ),

              //button
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                          return Colors.blue;
                      }),
                  backgroundColor:  MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                          return Colors.blue;
                        return null; // Defer to the widget's default.
                      }),
                ),
                onPressed: () { },
                child: Text('Envoyer', style: TextStyle(color: Colors.black),),
              )

            ],
          ),
        ),
      ),
      bottomNavigationBar: BotttomBar()
    );
  }
}

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextCenter(
              text: 'Adresse :',
            ),
            Row(children: <Widget>[
              Expanded(child: Divider()),
            ]),
            Text(
                "Axe OUAGA-FADA |RN : 4 – Coté Est | Agence CORIS BANK BENDOGO"
                    "\nSecteur : 42, Rue n°28.16, Rez- de -chaussée immeuble R+1, Parcelle : 15, Lot : 36"
                    "\nSection : YN",style: TextStyle(fontSize: 10),),
            SizedBox(
              height: 10,
            ),
            TextCenter(
              text: 'Contact',
            ),
            Row(children: <Widget>[
              Expanded(child: Divider()),
            ]),
            Text(
                "BUREAU : +226 25 48 32 65 \n\nMOBILE : +22678 60 12 94|+22673 73 56 74|+226 74 00 57 89 "
                "\n\nwww.obaasconsult.net -- E-mail: contact@obaasconsult.net\n",style: TextStyle(fontSize: 10),),
            TextCenter(
              text: 'Nous Contacter',
            ),
            Row(children: <Widget>[
              Expanded(child: Divider()),
            ]),

            //email
          ],
        ),

    );
  }
}

class TextCenter extends StatelessWidget {
  final String text;
  const TextCenter({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(
                      width: 5,
                      color: Colors.blue
                  )))),
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

class GradientButtonFb1 extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const GradientButtonFb1(
      {required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);
    const secondaryColor = Color(0xff6D28D9);
    const accentColor = Color(0xffffffff);

    const double borderRadius = 15;

    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient:
                const LinearGradient(colors: [primaryColor, secondaryColor])),
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              alignment: Alignment.center,
              padding: MaterialStateProperty.all(const EdgeInsets.only(
                  right: 75, left: 75, top: 15, bottom: 15)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),

              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    side: BorderSide(
                        width: 5,
                        color: Colors.blue
                    )
                ),

              )),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(color: accentColor, fontSize: 16),
          ),
        ));
  }
}
