import 'package:education_app_ui/pages/bottom_navbar.dart';
import 'package:education_app_ui/widgets/events_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 80),
                  child: Column(
                    spacing: 20,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 10,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  color: Colors.grey.shade200,
                                  width: 50,
                                  height: 50,
                                  child: Image.network(
                                    'https://static.vecteezy.com/system/resources/thumbnails/044/245/716/small_2x/handsome-man-smiling-with-a-trendy-beard-and-hairstyle-png.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'John Hawkins',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '6th grade',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Stack(
                            clipBehavior: Clip
                                .none, // Allows badge to overflow outside container
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.grey.shade200, width: 2),
                                ),
                                child: Icon(
                                    HugeIcons.strokeRoundedNotification02,
                                    size: 24),
                              ),
                              Positioned(
                                top: 12,
                                right: 12,
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.white, width: 1.5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          prefixIcon: Icon(HugeIcons.strokeRoundedSearch01),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Next class',
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
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 25,
                      right: 20,
                      top: 18,
                      bottom: 25,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 213, 250),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 16.0),
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 237, 227, 255),
                                ),
                                child: Icon(HugeIcons.strokeRoundedCalculate),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color.fromARGB(255, 237, 227, 255),
                              ),
                              child: Row(
                                children: [
                                  Text('Homework',
                                      style: TextStyle(fontSize: 18)),
                                  SizedBox(width: 4),
                                  Icon(
                                      HugeIcons.strokeRoundedCheckmarkCircle02),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Text(
                          'Basic mathematics',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Today, 08:15am',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.transparent.withValues(alpha: 0.6),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          spacing: 10,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                color: Colors.grey.shade200,
                                width: 50,
                                height: 50,
                                child: Image.network(
                                  'https://www.pngarts.com/files/3/Smiling-Man-PNG-Image-Background.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              'Jack Smith',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
                  color: const Color.fromARGB(255, 255, 238, 239),
                  image:
                      'https://media.istockphoto.com/id/1281543315/photo/happy-woman-enjoying-with-her-son-at-the-cinema.jpg?s=612x612&w=0&k=20&c=j_-OZXRV65WuAxZKCFYdGU6EvU7tGrfZL2duwa_X0AE=',
                  title: 'Comedy show',
                  content: '26 Apr, 6:30pm',
                ),
                EventsContainer(
                  color: const Color.fromARGB(255, 238, 255, 240),
                  image:
                      'https://i.pinimg.com/736x/89/dd/8a/89dd8a1b80e8d002736eaffdfd729a6d.jpg',
                  title: 'Dance evening',
                  content: '28 Apr, 3:30pm',
                ),
                EventsContainer(
                  color: const Color.fromARGB(255, 255, 254, 238),
                  image:
                      'https://www.aljazeera.com/wp-content/uploads/2022/11/2022-04-20T202058Z_1188430601_UP1EI4K1KIWO1_RTRMADP_3_SOCCER-ENGLAND-CHE-ARS-REPORT.jpg?resize=1920%2C1440',
                  title: 'Football match',
                  content: '30 Apr, 8:30pm',
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavbar(), // Your custom BottomNavbar widget
          ),
        ],
      ),
    );
  }
}
