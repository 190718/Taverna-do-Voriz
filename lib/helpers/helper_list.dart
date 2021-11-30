//import 'dart:convert';
//import 'dart:io';
//import 'dart:async';
//
//import 'package:flutter/material.dart';
//import 'package:path_provider/path_provider.dart';
//
//class HelperList extends StatefulWidget {
//  HelperList({Key? key}) : super(key: key);
//
//  @override
//  _HelperListState createState() => _HelperListState();
//}
//
//class _HelperListState extends State<HelperList> {
//  List _toDoList = [];
//
//  @override
//  Widget build(BuildContext context) {
//    return Container();
//  }
//
//  Future<File> _getFile() async {
//    final directory = await getApplicationDocumentsDirectory();
//    return File('${directory.path}/data.json');
//  }
//
//  Future<File> _saveData() async {
//    String data = json.encode(_toDoList);
//    final file = await _getFile();
//    return file.writeAsString(data);
//  }
//
//  Future<String?> _readData() async {
//    try {
//      final file = await _getFile();
//
//      return file.readAsString();
//    } catch (e) {
//      return null;
//    }
//  }
//}
//