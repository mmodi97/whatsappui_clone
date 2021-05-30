import 'package:flutter/material.dart';
import 'package:whatsappui_clone/modal/contactsmodel.dart';

class NewContact extends StatefulWidget {
  const NewContact({Key key}) : super(key: key);

  @override
  _NewContactState createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Contact",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              Text(
                "465 contacts",
                style: TextStyle(fontSize: 12.0),
              )
            ],
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: RaisedButton(
              child: Icon(
                Icons.search,
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
                Icons.more_vert,
                color: Color(0xffffffffff),
              ),
              onPressed: () {},
              color: Color(0xff075E54),
            ),
            width: 40.0,
          ),
        ],
      ),
      body: Container(
        color: Color(0xffffff),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff25D366),
                child: Icon(
                  Icons.group,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text(
                "Add Group",
                style: TextStyle(
                    fontWeight: FontWeight.w900, color: Colors.black87),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff25D366),
                child: Icon(
                  Icons.person_add,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: Text(
                "New Contact",
                style: TextStyle(
                    fontWeight: FontWeight.w900, color: Colors.black87),
              ),
            ),
          Flexible(child:
          ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [

                  ListTile(
                    leading: CircleAvatar(
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Colors.grey,
                      maxRadius: 25.0,
                      backgroundImage:
                      new NetworkImage(contacts[index].avatarurl),
                    ),
                    title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          contacts[index].name,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    subtitle: new Row(
                      children: [

                        Container(
                            margin: EdgeInsets.only(left: 2.0),
                            child: Text(
                              contacts[index].status,
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 15.0),
                            ))
                      ],
                    ),
                  )
                ],
              );
            },
            itemCount: contacts.length,
          ))
          ],
        ),
      ),
    );
  }
}
