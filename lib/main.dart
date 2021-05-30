import 'package:flutter/material.dart';
import 'package:whatsappui_clone/pages/newmessage.dart';
import 'package:whatsappui_clone/pages/personal_chat.dart';

import 'WhatsappHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xfffffffff),
        primarySwatch: Colors.blue,
      ),
      home: new WhatsappHome(),
      routes:{
        "/newcontact":(context)=>NewContact(),
        "/persoanl":(context)=>PersonalChat()
      },

    );
  }
}

