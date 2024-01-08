import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recruitease_app/constant/BottomNavPage.dart';
import 'package:recruitease_app/screens/mycourses_page.dart';
import 'package:recruitease_app/screens/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  int currentIndex = 0;
  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      HomeContent(),
      mycourses_page(),
      Placeholder(), // Placeholder for Achievements page
      Profile(
        userEmail: 'userEmail',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text("Home",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      ),
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back),
      //     color: Colors.black, // Set the color of the back button
      //     onPressed: () {
      //       // Handle back button press here
      //       // For example, you can navigate to the previous screen
      //       Navigator.pop(context);
      //     },
      //   ),
      //
      //   // title: Text(
      //   //   'Hello Dhaval',
      //   //   style: TextStyle(
      //   //     color: Colors.black,
      //   //   ),
      //   // ),
      //   backgroundColor: Colors.white,
      //   systemOverlayStyle: SystemUiOverlayStyle.dark,
      // ),
      bottomNavigationBar: NavBottom(
        c: context,
        selectedIndex: 0,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final user = FirebaseAuth.instance.currentUser;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                child: Text(
                  'What do you want to learn today ',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 16.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    'lib/assets/images/profile.png',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 24.0),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Companies Specialization',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildSpecializationBox('Box 1', Colors.blue, 150.0),
                _buildSpecializationBox('Box 2', Colors.blue, 150.0),
                _buildSpecializationBox('Box 3', Colors.blue, 150.0),
                _buildSpecializationBox('Box 4', Colors.blue, 150.0),
                _buildSpecializationBox('Box 5', Colors.blue, 150.0),
                _buildSpecializationBox('Box 6', Colors.blue, 150.0),
              ],
            ),
          ),
          SizedBox(height: 24.0),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Top Courses',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                height: 100.0,
                margin: EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text('Course $index'),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSpecializationBox(String title, Color color, double width) {
    return Container(
      width: width,
      height: 100.0,
      margin: EdgeInsets.all(8.0),
      color: color,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
