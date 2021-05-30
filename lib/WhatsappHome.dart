import 'package:flutter/material.dart';
import 'package:whatsappui_clone/pages/callscreen.dart';
import 'package:whatsappui_clone/pages/camera_screen.dart';
import 'package:whatsappui_clone/pages/chatscreen.dart';
import 'package:whatsappui_clone/pages/newmessage.dart';
import 'package:whatsappui_clone/pages/statusscreen.dart';

import 'modal/menus.dart';

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({Key key}) : super(key: key);

  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=new TabController(length: 4, vsync: this,initialIndex: 1);

    _tabController.addListener(_handleTabIndex);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  void _handleTabIndex() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Whatsapp"),elevation: 0.6,
        bottom: new TabBar(tabs:<Widget>[
        new Tab(icon: new Icon(Icons.camera_alt),) ,
        new Tab(child: Text("CHATS",style: TextStyle(fontWeight: FontWeight.w900),),),
          new Tab(child: Text("STATUS",style: TextStyle(fontWeight: FontWeight.w900),),),
          new Tab(child: Text("CALLS",style: TextStyle(fontWeight: FontWeight.w900),),),

      ],controller: _tabController,), actions: [
          Container(margin: EdgeInsets.only(right: 10.0),child:
          RaisedButton(child:Icon(Icons.search,color: Color(0xffffffffff),) ,onPressed: (){

          },color: Color(0xff075E54),),width: 40.0,),
         /* Container(margin: EdgeInsets.only(right: 10.0),child:
          RaisedButton(child:Icon(Icons.more_vert,color: Color(0xffffffffff),) ,onPressed: (){

          },color: Color(0xff075E54),),width: 40.0,),*/
          PopupMenuButton<String>(itemBuilder: (BuildContext context){

            return constants.map((Constants coince) {
              return  PopupMenuItem<String>(
                value: coince.name,
                textStyle: TextStyle(color: Colors.redAccent,backgroundColor: Colors.black87),
              );
            }

            ).toList();

          },onSelected:choiceAction)
        ],),

      
      body: TabBarView(children: [
       new CameraScreen()
        ,new ChatScreen()
        ,new StatusScreen()
        ,new CallScreen()
      ],controller: _tabController,),floatingActionButton:_bottomButtons() ,
    );
  }

  Widget _bottomButtons() {
    switch(_tabController.index){
      case 1 :return FloatingActionButton(
          child: Icon(Icons.message,color: Color(0xffffffff),),
          backgroundColor:new Color(0xff25D366) ,
          onPressed:(){
            Navigator.of(context).pushNamed("/newcontact");

          }


      );
      break;
      case 2 :return FloatingActionButton(
          child: Icon(Icons.camera_alt,color: Color(0xffffffff),),
          backgroundColor:new Color(0xff25D366) ,
          onPressed:(){
            Navigator.of(context).pushNamed("/newcontact");

          }


      );
      break;
      case 3 :return FloatingActionButton(
          child: Icon(Icons.add_ic_call_rounded,color: Color(0xffffffff),),
          backgroundColor:new Color(0xff25D366) ,
          onPressed:(){
            Navigator.of(context).pushNamed("/newcontact");

          }


      );
      break;

    }
  }

  void choiceAction(String choice){

}
}
