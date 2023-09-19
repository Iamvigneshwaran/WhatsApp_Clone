import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/call.dart';
import 'package:whatsapp/tabs/camera.dart';
import 'package:whatsapp/tabs/chats.dart';
import 'package:whatsapp/tabs/status.dart';

void  main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

 late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
    ..addListener(() { 
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Colors.green, // Your accent color
      )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
           backgroundColor: Color.fromARGB(255, 12, 82, 14),
           actions: [
            IconButton(
              onPressed: null,
              icon : Icon(Icons.search,
              color: Colors.white,)
               ),
            PopupMenuButton(
              itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                'New Group',
                style: TextStyle(
                  fontWeight: FontWeight.w500),
                  )
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text(
                'New broadcast',
                style: TextStyle(
                  fontWeight: FontWeight.w500),
                  )
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text(
                'Linked devices',
                style: TextStyle(
                  fontWeight: FontWeight.w500),
                  )
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text(
                'Starred messages',
                style: TextStyle(
                  fontWeight: FontWeight.w500),
                  )
                  ),
                  PopupMenuItem(
                       value: 2,
                    child: Text(
                'Share',
                style: TextStyle(
                  fontWeight: FontWeight.w500),
                  )
                  )
              ],
            )
           ],
           bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(text: 'CHATS',),
              Tab(text: 'STATUS',),
              Tab(text: 'CALL',)
            ],)
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Camera(),
            Chats(),
            Status(),
            Call(),
          ]),
          floatingActionButton: _tabController.index == 0?
          FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.camera),
          ): _tabController.index==1?
          FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.message),
          ): _tabController.index==2?
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 45.0,
                width: 45.0,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: null,
                  child: Icon(
                    Icons.edit,
                    color: Colors.blueGrey,
                    ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.camera_alt),
              )
            ],
          ):
          FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.call),
          ),
        ),
    );
  }
}