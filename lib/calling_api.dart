import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CallingApi extends StatefulWidget {
  const CallingApi({super.key});

  @override
  State<CallingApi> createState() => _CallingApiState();
}

class _CallingApiState extends State<CallingApi> {
  final url = 'https://jsonplaceholder.typicode.com/posts';
  var data;

  @override
  void initState() {
    super.initState();
    setState(() {
      getData();
    });
  }

  getData() async {
    var response = await http.get(Uri.parse(url));
    data = jsonDecode(response.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          color: Colors.greenAccent,
          child: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                data[index]['body'],
                maxLines: 2,
              ),
            );
          }),
        ),
      ),
    );
  }
}
