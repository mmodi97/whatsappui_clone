import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui_clone/modal/chatmodel.dart';
import 'package:whatsappui_clone/modal/statusmodel.dart';
class StatusScreen extends StatefulWidget {
  const StatusScreen({Key key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 70.0),
        width: 50.0,
        height: 50.0,
       child: FloatingActionButton(child: Icon(Icons.create,color:Colors.black87,),backgroundColor: Color.fromRGBO(216, 216, 216, 1.0),),
      ),
      body: Container(

        child: Column(
          children: [
            ListTile(
              leading: Container(

                child: Stack(

                  children: [
                    CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    maxRadius: 25.0,
                    backgroundImage: new NetworkImage(dummydata[0].avatarurl),
                      child:new Align(

                        alignment: Alignment.bottomRight,
                        child:Container(
                          width: 18.0,
                          height: 18.0,
                          child:  RawMaterialButton(


                            fillColor: Color(0xff25D366),
                            child: Icon(
                              Icons.add,
                              size: 16.0,
                              color: Colors.white,

                            ),
                            shape: CircleBorder(),
                          ),
                        ),
                      ) ,
                  ),


                  ],
                ),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Status",style: TextStyle(fontWeight: FontWeight.w800),),

                ],



              ),
              subtitle: new Row(

                children: [


                  Container(
                      margin: EdgeInsets.only(left: 2.0),
                      child:Text("Tap to add status update",style: TextStyle(fontWeight: FontWeight.w700),)
                  )
                ],
              ),
            )
            ,
            Container(
              child: Divider(
                color: Colors.grey,
                height: 8.0,
                thickness: 0.2,

              ),
            )
            ,
          Container(
            width:double.infinity,
            height: 25.0,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.0),
            child: Text("Recent Updates",style: TextStyle(fontWeight:FontWeight.w700,color: Colors.black54),),
            decoration: BoxDecoration(color: Color.fromRGBO(232,232,232, 1.0)),
          ),
           Flexible(child: ListView.builder(itemBuilder:(context,index){
             return  Column(
               children: [
                 index>0  && index<=statusmodel.length?
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
                     backgroundImage: new NetworkImage(statusmodel[index].imageurl),
                   ),
                   title: new Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(statusmodel[index].name,style: TextStyle(fontWeight: FontWeight.w500),),

                     ],



                   ),
                   subtitle: new Row(

                     children: [

                       Container(
                           margin: EdgeInsets.only(left: 2.0),
                           child:Text(statusmodel[index].time,style: TextStyle(color: Colors.grey,fontSize: 15.0),))
                     ],
                   ),
                 )
               ],
             );
           }
             ,itemCount: statusmodel.length,
           )


           )
          ],
        ),

      ),
    );
  }

  /*Widget statusListData(){
    return
  }*/
}
