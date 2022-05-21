// ignore: unused_import
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'message_screen.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({ Key? key }) : super(key: key);

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0 ,
        backgroundColor: const Color(0xff075e54),
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage("assets/ironman.jpg"),
            ),
            Padding(padding: EdgeInsets.only(left: 10.0)),
            Text("Arun"),
          ],
        ),
        actions: [
          IconButton(
            
            onPressed: ((() =>{} )),
            icon: const Icon(Icons.call)),
             const Padding(padding: EdgeInsets.only(left: 10.0)),
            IconButton(
            onPressed: (( () =>{} )),
            icon: const Icon(Icons.video_call)),
             const Padding(padding: EdgeInsets.only(left: 10.0)),
            IconButton(
            onPressed: ((() =>{} )),
            icon: const Icon(Icons.more_vert)
      )],
      ),
      body: Column(
        children:  [
          const Expanded(child: MessageScreen()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(child: TextFormField(
                  maxLines: 3,
                  minLines: 1,
                  decoration:  InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(500),
                      borderSide: const BorderSide(color: Color.fromARGB(255, 56, 55, 53,
                      ),width: 0.0)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(500),
                      borderSide: const BorderSide(color: Color.fromARGB(255, 56, 55, 53,),width: 0.0 )
                    ),
                    hintText: "Type your message",
                  ),
                )
                ),
              ],
            )
          )
        ],
        
      )
    );
  }
}