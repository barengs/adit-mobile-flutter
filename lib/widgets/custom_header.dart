import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String? title;
  final String? username;
  final String? npm;
  final String? profileImageUrl;

  const CustomHeader({
    super.key,
    this.title,
    this.username,
    this.npm,
    this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF21ABA5),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ini bagian title
          if (title != null)
            Text(
              title!,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: 'Righteous',
                fontWeight: FontWeight.w400,
              ),
            ),
          if (title != null) SizedBox(height: 30),

          // ini bagian username, npm, profileImage
          if (username != null || npm != null || profileImageUrl != null)
            Padding(
              padding: const EdgeInsets.only(
                top: 40.0, left: 16.0,
              ),
              child: Row(
                children: [
                  if (profileImageUrl != null)
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(profileImageUrl!),
                    ),
                  if (profileImageUrl != null) SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (username != null)
                        Text(
                          username!,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Righteous',
                          ),
                        ),
                      if (npm != null)
                        Text(
                          npm!,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'RobotoSlab',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
