import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat_model.dart'; // Import your chat model

class MessagePage extends StatelessWidget {
  final ChatModel chatData;

  MessagePage({required this.chatData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chatData.name), // Display the name of the chat
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(chatData.pic), // Display the chat's profile picture
            ),
            SizedBox(height: 16),
            Text(
              chatData.msg, // Display the chat message
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
