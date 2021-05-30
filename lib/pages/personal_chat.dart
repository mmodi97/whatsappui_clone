import 'package:flutter/material.dart';
import 'package:whatsappui_clone/modal/chatmodel.dart';
import 'package:whatsappui_clone/modal/menus.dart';

class PersonalChat extends StatefulWidget {
  const PersonalChat({Key key}) : super(key: key);

  @override
  _PersonalChatState createState() => _PersonalChatState();
}

class _PersonalChatState extends State<PersonalChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Mayank",style: TextStyle(fontSize: 16.0),),
              Padding(padding: EdgeInsets.all(2.0)),
              Text("Online",style: TextStyle(fontSize: 12.0),),

            ],
          ),
        ),
          leading: Container(

            child: Row(
              children: [
                Container(

                  child: Icon(
                      Icons.arrow_back
                  ),
                )
                ,
                Container(
                  width: 32.0,
                  height: 32.0,
                  padding: EdgeInsets.only(left: 2.0),
                  child: CircleAvatar(
                  backgroundImage:new NetworkImage(dummydata[0].avatarurl),
                    backgroundColor: Color(0xff075E54),
                ),)
              ],
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: RaisedButton(
                child: Icon(
                  Icons.call,
                  color: Color(0xffffffffff),
                ),
                onPressed: () {},
                color: Color(0xff075E54),
              ),
              width: 40.0,
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: RaisedButton(
                child: Icon(
                  Icons.videocam,
                  color: Color(0xffffffffff),
                ),
                onPressed: () {},
                color: Color(0xff075E54),
              ),
              width: 40.0,
            ),
            PopupMenuButton<String>(itemBuilder: (BuildContext context){

              return constants.map((Constants coince) {
                return  PopupMenuItem<String>(
                  value: coince.name,

                  textStyle: TextStyle(color: Colors.redAccent,backgroundColor: Colors.black87),
                );
              }

              ).toList();

            },onSelected:choiceAction)


          ]
      ),

      body:Container(

          color:  Color.fromRGBO(216, 216, 216, 1.0),
        child: new Column(
          children: <Widget>[

            Flexible(

              child: Container(
                color:  Color.fromRGBO(216, 216, 216, 1.0),
              ),

            ),


              Container(
                child: Row(

                  children: [
                   Expanded(child:
                   Card(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(22.0),
                       ),
                       shadowColor: Colors.grey,
                       elevation: 2,
                       child: Row(
                         children: [

                           ClipPath(
                             clipper: ShapeBorderClipper(
                                 shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(30))),
                             child: Container(
                               height: 45,
                               decoration: BoxDecoration(

                                 color: Colors.white,
                               ),
                               child: Expanded(
                                 child: Row(


                                   children: [

                                     Container(
                                       padding: EdgeInsets.only(left: 5.0),
                                       child: CircleAvatar(
                                         maxRadius: 18.0,
                                         backgroundColor: Colors.white,
                                         child: Icon(Icons.sentiment_satisfied,color: Colors.grey,size: 30.0,),

                                       ),
                                     ),
                                    Container(

                                      width: 235.0,
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: TextFormField(


                                        cursorColor: Color(0xff075E54),
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400

                                        ),
                                        decoration: InputDecoration(
                                            hintText: "Type a message",
                                            focusColor:Colors.white,


                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,

                                            fillColor: Colors.white,

                                            hintStyle: TextStyle(
                                                color: Colors.grey
                                            )
                                        ),

                                      ),
                                    ),
                                     Icon(Icons.attach_file,color:Colors.grey),
                                     Padding(padding: EdgeInsets.only(left: 10.0),),

                                     Icon(Icons.camera_alt,color:Colors.grey),
                                   ],
                                 ),
                               ),

                             ),
                           )
                           ,
                           Padding(padding: EdgeInsets.only(left: 2.0,right: 2.0)),

                         ],
                       )

                   )),
                    Container(
                      child:
                      CircleAvatar(
                        maxRadius: 25.0,
                        backgroundColor: Color(0xff075E54),
                        child: Icon(Icons.send,color: Colors.white,size: 20.0,),

                      ),
                      padding: EdgeInsets.only(right: 5.0),
                    )



                  ],
                ),
              )
          ,

    Padding(padding: EdgeInsets.all(1.0))
          ],
        ),
      )
    );
  }
  void choiceAction(String choice){

  }

 Widget _textComposerWidget() {
return
  Card(
    color: Colors.red,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
   child: Container(
     color: Colors.red,
   ));


 }
}
