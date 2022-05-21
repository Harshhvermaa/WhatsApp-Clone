import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';


class MessageScreen extends StatefulWidget {
  const MessageScreen({ Key? key }) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
} 

class _MessageScreenState extends State<MessageScreen> {
  // ignore: non_constant_identifier_names, constant_identifier_names, unused_field
  static const  StyleSender = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
  alignment: Alignment.topRight,
  nip: BubbleNip.rightTop,
  // ignore: prefer_const_constructors
  color: Color.fromRGBO(225, 255, 199, 1.0),
  );

   // ignore: unused_field, constant_identifier_names
   static const  StyleReciever = BubbleStyle(
     margin: BubbleEdges.only(top: 10),
  alignment: Alignment.topLeft,
  nip: BubbleNip.leftTop,
  );
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
     });
    // ignore: avoid_unnecessary_containers
    return ListView(
      controller: _scrollController,
      children: [
        const Padding(padding: EdgeInsets.only(top: 8.0)),
        Bubble(
  alignment: Alignment.center,
  color: const Color.fromRGBO(212, 234, 244, 1.0),
  child: const Text('TODAY', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
  ),
  Bubble(
  // ignore: prefer_const_constructors
 style: StyleSender,
  // ignore: prefer_const_constructors
  child: Text('Hello, World!', textAlign: TextAlign.right),
),
Bubble(
  // ignore: prefer_const_constructors
  style: StyleReciever,
  // ignore: prefer_const_constructors
  child: Text('Hi, developer!'),
),
Bubble(
  // ignore: prefer_const_constructors
  style: StyleSender,
  // ignore: prefer_const_constructors
  child: Text('Hello, World!', textAlign: TextAlign.right),
  showNip: false,
),
Bubble(
  // ignore: prefer_const_constructors
 style: StyleReciever,
   child: const Text('Hi, developer!'),
   showNip: false,
),
 Bubble(
  // ignore: prefer_const_constructors
 style: StyleSender,
  // ignore: prefer_const_constructors
  child: Text('Hello, World!', textAlign: TextAlign.right),
),
Bubble(
  // ignore: prefer_const_constructors
  style: StyleReciever,
  // ignore: prefer_const_constructors
  child: Text('Hi, developer!'),
),
Bubble(
  // ignore: prefer_const_constructors
  style: StyleSender,
  // ignore: prefer_const_constructors
  child: Text('Hello, World!', textAlign: TextAlign.right),
  showNip: false,
),
Bubble(
  // ignore: prefer_const_constructors
 style: StyleReciever,
   child: const Text('Hi, developer!'),
   showNip: false,
),
 Bubble(
  // ignore: prefer_const_constructors
 style: StyleSender,
  // ignore: prefer_const_constructors
  child: Text('Hello, World!', textAlign: TextAlign.right),
),
Bubble(
  // ignore: prefer_const_constructors
  style: StyleReciever,
  // ignore: prefer_const_constructors
  child: Text('Hi, developer!'),
),
Bubble(
  // ignore: prefer_const_constructors
  style: StyleSender,
  // ignore: prefer_const_constructors
  child: Text('Hello, World!', textAlign: TextAlign.right),
  showNip: false,
),
Bubble(
  // ignore: prefer_const_constructors
 style: StyleReciever,
   child: const Text('Hi, developer!'),
   showNip: false,
),
 Bubble(
  // ignore: prefer_const_constructors
 style: StyleSender,
  // ignore: prefer_const_constructors
  child: Text('Hello, World!', textAlign: TextAlign.right),
),
Bubble(
  // ignore: prefer_const_constructors
  style: StyleReciever,
  // ignore: prefer_const_constructors
  child: Text('Hi, developer!'),
),
Bubble(
  // ignore: prefer_const_constructors
  style: StyleSender,
  // ignore: prefer_const_constructors
  child: Text('Hello, World!', textAlign: TextAlign.right),
  showNip: false,
),
Bubble(
  // ignore: prefer_const_constructors
 style: StyleReciever,
   child: const Text('Hi, developer!'),
   showNip: false,
),
 Bubble(
  // ignore: prefer_const_constructors
 style: StyleSender,
  // ignore: prefer_const_constructors
  child: Text('Hello, World!', textAlign: TextAlign.right),
),
Bubble(
  // ignore: prefer_const_constructors
  style: StyleReciever,
  // ignore: prefer_const_constructors
  child: Text('Hi, developer!'),
),
Bubble(
  // ignore: prefer_const_constructors
  style: StyleSender,
  // ignore: prefer_const_constructors
  child: Text('Hello, World!', textAlign: TextAlign.right),
  showNip: false,
),
Bubble(
  // ignore: prefer_const_constructors
 style: StyleReciever,
   child: const Text('Hi, developer!'),
   showNip: false,
),
     ],
    );
  }
}