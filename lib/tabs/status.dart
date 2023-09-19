import 'package:flutter/material.dart';
import 'package:whatsapp/model/call_model.dart';
import 'package:whatsapp/model/status_model.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50.0,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Image.network('https://randomuser.me/api/portraits/med/men/53.jpg',
                        width: 50,
                        height: 50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Icon(Icons.add,
                          color: Colors.white,
                          size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                title: Text('My status',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Tab to add Status Update'),
              )
              )
          ],
        ),
        SizedBox(
          height: 30,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
            width: double.infinity,
            color: Colors.grey[300],
            child: Text('Recently Updated',
            style: TextStyle(color: Colors.grey.shade600),
            ),
          ),
          
        ),
        Expanded(
          child: ListView.builder(
            itemCount: statusData.length,
            itemBuilder: (context,i)=> Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(statusData[i].pic),
                  ),
                  title: Row(
                    children: [
                      Text(statusData[i].name,
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                    ]
                    ),
                  subtitle: Text(
                    statusData[i].time,
                    style: TextStyle(color: Colors.grey,fontSize: 12.0),
                  ),
                )
              ],
            )
            )
          )
      ],
    );
  }
}