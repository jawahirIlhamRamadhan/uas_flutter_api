import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas_flutter_api/DrawerNavi.dart';
import 'package:uas_flutter_api/State.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          title: Text(
            'UAS  Project  API', style: TextStyle(color: Colors.lightGreenAccent),
          ),
          backgroundColor: Colors.black,
        ),
        drawer: DrawerNavi(),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final stateManager = HomePageManager();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom( primary: Colors.black),
                onPressed: stateManager.makeGetRequest,
                child: Text('GET', style: TextStyle(fontSize: 19, color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom( primary: Colors.black),
                onPressed: stateManager.makePostRequest,
                child: Text('POST', style: TextStyle(fontSize: 19, color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),)
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom( primary: Colors.black),
                onPressed: stateManager.makePutRequest,
                child: Text('PUT', style: TextStyle(fontSize: 19, color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom( primary: Colors.black),
                onPressed: stateManager.makePatchRequest,
                child: Text('PATCH', style: TextStyle(fontSize: 19, color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom( primary: Colors.black),
                onPressed: stateManager.makeDeleteRequest,
                child: Text('DELETE', style: TextStyle(fontSize: 19, color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),),
                ),
            ],
          ),

        SizedBox(height: 20),
        ValueListenableBuilder<RequestState>(
          valueListenable: stateManager.resultNotifier,
          builder: (context, requestState, child) {
            if (requestState is RequestLoadInProgress) {
              return CircularProgressIndicator();
            } else if (requestState is RequestLoadSuccess) {
              return Expanded(child: SingleChildScrollView(child: Text(requestState.body)));
            } else {
              return Container();
            }
          },
        ),
      ],
    );
  }
}