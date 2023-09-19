import 'package:flutter/material.dart';
import 'package:whatsapp/conversation/messagePage.dart';
import 'package:whatsapp/model/chat_model.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatsData.length,
      itemBuilder: (context,i) => Column(
        children: [
          Divider(
            height: 0.1,
          ),
          ListTile(
            onTap: () {
               // Navigate to MessagePage with the selected chat data
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagePage(chatData: chatsData[i]),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(chatsData[i].pic),
              ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(chatsData[i].name,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold, 
                ),
                ),
                Text(chatsData[i].time,
                style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.grey
                ),
                )
              ],
            ),
            subtitle: Text(chatsData[i].msg),
          )
        ],
      ));
  }
}