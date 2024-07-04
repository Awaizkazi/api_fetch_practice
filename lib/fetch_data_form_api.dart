// ignore_for_file: prefer_const_constructors
import 'dart:convert';

import 'package:api_fetch_practice/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchDataFromApi extends StatefulWidget {
  const FetchDataFromApi({super.key});

  @override
  State<FetchDataFromApi> createState() => _FetchDataFromApiState();
}

class _FetchDataFromApiState extends State<FetchDataFromApi> {
  List<SamplePosts> samplePosts =
      []; //TODO Server jo data aaega usko hm is List me store karne wale hai

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Container(
          height: 120,
          color: Colors.greenAccent,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          margin: EdgeInsets.all(10),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('userId : data', style: TextStyle(fontSize: 17)),
              Text('id : data', style: TextStyle(fontSize: 17)),
              Text('title : data', style: TextStyle(fontSize: 17)),
              Text('body : data', style: TextStyle(fontSize: 17)),
            ],
          ),
        );
      },
    );
  }

  // Future<List<SamplePosts>> getData() async {
  //   final response = await http.get(
  //     Uri.parse('https://jsonplaceholder.typicode.com/posts'),
  //   );
  //   var data = jsonDecode(response.body.toString());

  //   if (response.statusCode == 200) {
  //     for (Map<String, dynamic> index in data) {
  //       samplePosts.add(
  //         SamplePosts.fromJson(index),
  //       );
  //     }
  //     return samplePosts;
  //   } else {
  //     samplePosts;
  //   }
  // }
}
