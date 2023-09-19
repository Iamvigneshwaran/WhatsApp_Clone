import 'package:flutter/material.dart';
import 'package:whatsapp/model/call_model.dart';
import 'package:whatsapp/model/chat_model.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      itemCount: callData.length,
      itemBuilder: (context, index) => Column(
        children: [
          
          Divider(height: 0.10,),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(callData[index].pic),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(callData[index].name),
                  Icon(index%2==0?Icons.call:Icons.video_call,
                  color: Theme.of(context).primaryColor,
                  )
                ],
              ),
              subtitle: Text(
                callData[index].time,
                style: TextStyle(color: Colors.grey,fontSize: 12.0),
                ),
            
          ),
        ],
      ),
      );
  }
}