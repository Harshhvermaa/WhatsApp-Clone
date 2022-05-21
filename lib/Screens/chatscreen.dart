import 'package:flutter/material.dart';

import '../Modals/chatmodals.dart';
import 'chat_detail_screen.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: ListView.builder(
       itemCount: chatmodal.length,
       itemBuilder: (context , i ) => Column(
         children:  [
           const Divider(
             height: 15.0,
           ),
           ListTile(
             leading:  CircleAvatar(
               backgroundColor: Colors.amber,
               backgroundImage: AssetImage(chatmodal[i].avatar),
             ),
             title: Text(chatmodal[i].name,
             style: const TextStyle(fontWeight: FontWeight.bold),),
             subtitle: Text(chatmodal[i].message),
             trailing: Text(chatmodal[i].time),
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder:
                (context) => const ChatDetailScreen() ));
             },
           )
         ],
       ),
       ),
    );
  }
}