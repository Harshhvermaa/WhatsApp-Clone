// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:whatsappclone/Modals/chatmodals.dart';
import 'package:whatsappclone/Screens/chat_detail_screen.dart';

import '../Modals/callmodals.dart';



class CallScreen extends StatefulWidget {
  const CallScreen({ Key? key }) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: ListView.builder(
        itemCount: callmodels.length,
        itemBuilder: (context,i)=> Column(
          children:  [
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(chatmodal[i].avatar),
              ),
              title: Text(chatmodal[i].name, ),
              subtitle: Row(
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: callmodels[i].calltype,
                  ),
                  Text(chatmodal[i].time),
                ],
              ),
              trailing: IconButton(
                onPressed: (()=>{}),
                icon: const Icon(Icons.call),
                ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:
              (context)=> const ChatDetailScreen() ));
            } ,
            )
          ],
        ) 
        ),
        

    
    );
  }
}