// ignore: unused_import
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/Screens/status_screen.dart';

import 'call_screen.dart';
import 'chatscreen.dart';
// ignore: camel_case_types, must_be_immutable
class Home_Screeen extends StatefulWidget {
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
   const Home_Screeen({Key? key , required this.title}) : super(key: key);
   final String title;
 @override
  State<Home_Screeen> createState() => _Home_ScreeenState();
}

// ignore: camel_case_types
class _Home_ScreeenState extends State<Home_Screeen> with 
SingleTickerProviderStateMixin {
  // ignore: unused_field
  late TabController _tabcontroller;
  final List<Tab> toptabs = <Tab>[
    const Tab(icon: Icon(Icons.camera),),
    const Tab(text: "CHAT",),
    const Tab(text: "STATUS",),
    const Tab(text: "CALLS",),
  ];
  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 4,
    initialIndex: 1 ,vsync: this);
    _tabcontroller.addListener(_handleTabIndex);
  }
   void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff075e54),
        title:  Text(widget.title),
        actions: [
          IconButton(
            // ignore: avoid_print
            onPressed: (){ print("Search is clicked");} ,
          icon: const Icon(Icons.search)),
          IconButton(
            // ignore: avoid_print
            onPressed: (){ print("Menu is clicked");} ,
          icon: const Icon(Icons.more_vert)),
        ],
        bottom:TabBar(
          indicatorWeight: 3.0,
          tabs: toptabs,
          indicatorColor: Colors.white,
          controller: _tabcontroller, 
          
        )
      ),
      body: TabBarView(
        controller: _tabcontroller,
        children: const [
          Text("Camera"),
          ChatPage(),
          Statusscreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton:_getFAb(),
    );
  }

  _getFAb(){
        
        if(_tabcontroller.index == 1){
          return FloatingActionButton(
            // ignore: avoid_print
            onPressed: (()=>print("HELLO")),
            // ignore: deprecated_member_use
            backgroundColor:Theme.of(context).accentColor,
            child: const Icon(Icons.message,color: Colors.white,),
            enableFeedback: false,
          );
        }
        // ignore: unrelated_type_equality_checks
        if(_tabcontroller.index == 0){
          return FloatingActionButton(
            // ignore: avoid_print
            onPressed: (()=>print("WORLD")),
            backgroundColor:Theme.of(context).accentColor,
            child: const Icon(Icons.camera_alt_outlined,color: Colors.white,),
          );
        }
        if(_tabcontroller.index == 2){
          return FloatingActionButton(
            // ignore: avoid_print
            onPressed: (()=>print("HELLO WORLD")),
            backgroundColor:Theme.of(context).accentColor,
            child: const Icon(Icons.add_a_photo,color: Colors.white,),
          );
        }
        if(_tabcontroller.index == 3){
          return FloatingActionButton(
            // ignore: avoid_print
            onPressed: (()=>print("HELLO WORLD")),
            backgroundColor:Theme.of(context).accentColor,
            child: const Icon(Icons.call,color: Colors.white,),
          );
        }
  }
}