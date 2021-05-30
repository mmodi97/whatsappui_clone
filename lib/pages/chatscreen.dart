import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui_clone/modal/chatmodel.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder:(context,index){
      return  Column(
        children: [
          index>0  && index<=dummydata.length?
          Container(
            margin: EdgeInsets.only(left: 80.0),
              child:Divider(
                color: Colors.grey,
                height: 8.0,
                thickness: 0.2,

              )
          ):new Container()
          ,
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              maxRadius: 25.0,
              backgroundImage: new NetworkImage(dummydata[index].avatarurl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dummydata[index].name,style: TextStyle(fontWeight: FontWeight.w500),),
                Text(dummydata[index].time,style: TextStyle(color: Colors.grey,fontSize: 15.0),)
              ],



            ),
            subtitle: new Row(

              children: [

                Icon(Icons.done,color: Colors.grey,size: 15.0,)
                ,
                Container(
                    margin: EdgeInsets.only(left: 2.0),
                    child:Text(dummydata[index].mesage,style: TextStyle(color: Colors.grey,fontSize: 15.0),))
              ],
            ),
            onTap:(){
              Navigator.of(context).pushNamed("/persoanl");
            },
          )
        ],
      );
    }
    ,itemCount: dummydata.length,
    );
  }
}
