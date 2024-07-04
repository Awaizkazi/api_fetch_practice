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
        color: Colors.amberAccent,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView.builder(itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                data[index]['userId'].toString(),
                maxLines: 2,
              ),
              Text(
                data[index]['id'].toString(),
                maxLines: 2,
              ),
              Text(
                data[index]['title'].toString(),
                maxLines: 2,
              ),
              Text(
                data[index]['body'],
                maxLines: 2,
              ),
            ],
          );
        }),
      ),
    );
  }
}
