import 'package:education_app_ui/widgets/noti_icon.dart';
import 'package:flutter/material.dart';

class UserProfileRow extends StatelessWidget {
  const UserProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
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
        NotiIcon(),
      ],
    );
  }
}
