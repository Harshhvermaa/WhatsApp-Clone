import 'package:flutter/material.dart';

class CallModels{
  final String name;
  final String avatar;
  final String time;
  final Icon calltype;

  CallModels({required this.name,required this.time,required this.avatar,required this.calltype});
  // ignore: non_constant_identifier_names
  static Icon Callrecieved = const Icon(
  Icons.call_received,
  color: Colors.red,
  size: 18,
  );
  // ignore: non_constant_identifier_names
  static Icon Callcut = const Icon(
  Icons.call_made,
  color: Colors.green,
  size: 18,
  );

}
// ignore: unused_element
List<CallModels> callmodels = [
CallModels(name: "Rahul", time: "4035", avatar: "assets/ironman.jpg", calltype: CallModels.Callrecieved),
CallModels(name: "Rahul", time: "4035", avatar: "assets/ironman2.jpg", calltype: CallModels.Callrecieved),
CallModels(name: "Rahul", time: "4035", avatar: "assets/ironaman3.jpg", calltype: CallModels.Callcut),
];