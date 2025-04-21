import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class EventsContainer extends StatelessWidget {
  final String image;
  final String title;
  final String content;
  final Color color;
  const EventsContainer({
    super.key,
    required this.image,
    required this.title,
    required this.content,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 4, right: 20, top: 4, bottom: 4),
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 20,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      image,
                      width: 100,
                      fit: BoxFit.cover,
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 6,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    content,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.transparent.withValues(alpha: .5),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(HugeIcons.strokeRoundedFavourite),
          ),
        ],
      ),
    );
  }
}
