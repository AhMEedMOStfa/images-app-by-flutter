import 'dart:convert';

import 'package:counter_1/models/img-modal.dart';
import 'package:counter_1/src/shared/img-list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int id = 0;
  List<ImgModal> images = [];
  void fetchImg() async {
    id++;
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$id'));
    if (response.statusCode == 200) {
      var apiResult = jsonDecode(response.body);
      var image = ImgModal.fromJson(apiResult);
      setState(() {
      images.add(image);
      });
    } else {
      throw Exception('failed to fetch');
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: ImgList(images),
          floatingActionButton: FloatingActionButton(
            onPressed: fetchImg,
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            title: Text('Images Project'),
            centerTitle: true,
          )),
    );
  }
}
