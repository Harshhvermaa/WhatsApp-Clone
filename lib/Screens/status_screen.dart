// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:whatsappclone/Modals/statusmodals.dart';
class Statusscreen extends StatefulWidget {
  const Statusscreen({ Key? key }) : super(key: key);

  @override
  State<Statusscreen> createState() => StatusscreenState();
}

class StatusscreenState extends State<Statusscreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Column(
      
        children:  [
          const ListTile(
            leading:  CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: AssetImage("assets/ironman2.jpg" ),
              ),
              title: Text("My Status"),
              subtitle: Text("Tap to add status"),
          ),

          const Divider(),
          const Padding(padding: EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Top Recents",
            textAlign: TextAlign.left,
            ),
            
          ),
          ),
          
           const Padding(padding: EdgeInsets.only(left: 20.0),),
           Flexible(
             child: 
           ListView.builder(
        itemCount: statusmodal.length,
        itemBuilder: (context , i) => Column(
          children:   [
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading:  CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: AssetImage(statusmodal[i].avatar ),
              ),
              title: Text(statusmodal[i].name),
            )
            
          ],
          
    )

    )
    
           )
     
    ],
    
        );
  }
}