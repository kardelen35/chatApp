import 'package:chat/models/userModel.dart';
import 'package:chat/screens/conversationList.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  var chatUsers = [
    ChatUsers(
        name: "Kardelen",
        messageText: "Hi!",
        imageURL: "assets/userImage1.jpg",
        time: "Now"),
    ChatUsers(
        name: "Ceren",
        messageText: "That's Great",
        imageURL: "assets/userImage2.jpeg",
        time: "Yesterday"),
    ChatUsers(
        name: "Murat",
        messageText: "Hey where are you?",
        imageURL: "assets/userImage3.jpg",
        time: "31 Mar"),
    ChatUsers(
        name: "Sedef",
        messageText: "Can you please call me again?",
        imageURL: "assets/userImage4.jpg",
        time: "28 Mar"),
    ChatUsers(
        name: "Efe",
        messageText: "Thankyou",
        imageURL: "assets/userImage5.jpg",
        time: "23 Mar"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Conversations",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600]),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.person_add,
                            color: Colors.grey[600],
                            size: 30,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
