import 'package:education_app_ui/widgets/bottom_navbar.dart';
import 'package:education_app_ui/widgets/class_header.dart';
import 'package:education_app_ui/widgets/events_container.dart';
import 'package:education_app_ui/widgets/main_container.dart';
import 'package:education_app_ui/widgets/search_bar.dart';
import 'package:education_app_ui/widgets/user_profile_row.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 80),
                  child: Column(
                    children: [
                      UserProfileRow(),
                      SizedBox(height: 20),
                      SearchBarContainer(),
                      SizedBox(height: 20),
                      ClassHeader(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 4),
                  child: MainContainer(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Events',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                EventsContainer(
                  color: Color.fromARGB(255, 255, 238, 239),
                  image:
                      'https://media.istockphoto.com/id/1281543315/photo/happy-woman-enjoying-with-her-son-at-the-cinema.jpg?s=612x612&w=0&k=20&c=j_-OZXRV65WuAxZKCFYdGU6EvU7tGrfZL2duwa_X0AE=',
                  title: 'Comedy show',
                  content: '26 Apr, 6:30pm',
                ),
                EventsContainer(
                  color: Color.fromARGB(255, 238, 255, 240),
                  image:
                      'https://i.pinimg.com/736x/89/dd/8a/89dd8a1b80e8d002736eaffdfd729a6d.jpg',
                  title: 'Dance evening',
                  content: '28 Apr, 3:30pm',
                ),
                EventsContainer(
                  color: Color.fromARGB(255, 255, 254, 238),
                  image:
                      'https://www.aljazeera.com/wp-content/uploads/2022/11/2022-04-20T202058Z_1188430601_UP1EI4K1KIWO1_RTRMADP_3_SOCCER-ENGLAND-CHE-ARS-REPORT.jpg?resize=1920%2C1440',
                  title: 'Football match',
                  content: '30 Apr, 8:30pm',
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavbar(),
          ),
        ],
      ),
    );
  }
}

