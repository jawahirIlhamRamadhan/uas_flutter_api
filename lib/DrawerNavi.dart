import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uas_flutter_api/Profile.dart';

class DrawerNavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Colors.greenAccent,
              Colors.lightGreenAccent
            ])),
            child: Container(
              child: Column(
                children: <Widget>[
                  Material(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/images/self.png",
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Jawahir Ilham Ramadhan',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  )
                ],
              ),
            )),
        CustomListTile(
            Icons.person,
            'Profile',
            () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctxt) => Profile()))
                }),
        CustomListTile(
            Icons.power_settings_new_rounded,
            'Exit',
            () => {
                  SystemNavigator.pop(),
                }),
      ]),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  VoidCallback onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: Colors.cyanAccent,
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    )
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
