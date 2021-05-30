import 'package:flutter/material.dart';
import 'package:whatsappui_clone/modal/callmodel.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return  Flexible(child: ListView.builder(itemBuilder:(context,index){
      return  Column(
        children: [
          index>0  && index<=callmodel.length?
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
              backgroundImage: new NetworkImage(callmodel[index].avatarurl),
            ),
            trailing: Icon(Icons.videocam,color: Color(0xff075E54),),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(callmodel[index].name,style: TextStyle(fontWeight: FontWeight.w500),),

              ],



            ),
            subtitle: new Row(

              children: [
                callmodel[index].callstatus.toString()=="Received"?Icon(Icons.call_missed_outlined,color: Colors.red,size: 15.0,):
                Icon(Icons.call_made,color: Colors.green,size: 15.0,),

                Container(
                    margin: EdgeInsets.only(left: 2.0),
                    child:Text(callmodel[index].time,style: TextStyle(color: Colors.grey,fontSize: 15.0),))
              ],
            ),
          )
        ],
      );
    }
      ,itemCount: callmodel.length,
    )


    );
  }
}
