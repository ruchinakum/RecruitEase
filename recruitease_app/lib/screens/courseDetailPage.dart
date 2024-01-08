import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recruitease_app/screens/coursewithDotPage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'course_video_page.dart'; // Replace with the file name containing MyHomePage class

class courseDetailPage extends StatelessWidget {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2072&q=80',
    'https://images.unsplash.com/photo-1571171637578-41bc2dd41cd2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1593720213428-28a5b9e94613?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
    'https://images.unsplash.com/photo-1505373877841-8d25f7d46678?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2012&q=80',
  ];

  final List<String> videoIds = [
    'lNQJNImBsKY', // Video ID for the first image
    'yFlvgI6Z9bE', // Video ID for the second image
    'hgTLtOVujAE', // Video ID for the third image
    // Add more video IDs as needed
  ];

  final List<String> videoTitles = [
    'Flutter Course', // Title for the first image
    'Flutter Integration', // Title for the second image
    'Flutter Doctor', // Title for the third image
    // Add more video titles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "My Courses",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Courses Completed",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 19,
                  ),
                ),
              ),
              GestureDetector(
                child: CoursewithDotPage(
                  imgList: imgList,
                  videoIds: videoIds,
                  videoTitles: videoTitles,
                ),
              ),

              // Add more sections as needed

            ],
          ),
        ),
      ),
    );
  }
}
