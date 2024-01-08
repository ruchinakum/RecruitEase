import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'course_video_page.dart'; // Replace with the file name containing MyHomePage class

class CoursewithDotPage extends StatefulWidget {
  final List<String> imgList;
  final List<String> videoIds;
  final List<String> videoTitles;

  CoursewithDotPage({
    required this.imgList,
    required this.videoIds,
    required this.videoTitles,
  });

  @override
  State<CoursewithDotPage> createState() => _CoursewithDotPageState();
}

class _CoursewithDotPageState extends State<CoursewithDotPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map((item) => Container(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: [
            Image.network(
              item,
              fit: BoxFit.cover,
              width: 400,
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'No. ${widget.imgList.indexOf(item)} Course',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ))
        .toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            String videoId = widget.videoIds[_current];
            String videoTitle = widget.videoTitles[_current];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage(
                  videoId: videoId,
                  appBarTitle: videoTitle,
                ),
              ),
            );
          },
          child: CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 2,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            int index = widget.imgList.indexOf(url);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? Colors.grey : Colors.grey.shade300,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
