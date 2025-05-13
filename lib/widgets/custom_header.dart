import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String? title;
  final String? username;
  final String? npm;
  final String? profileImageUrl;
  final bool showNotificationIcon;
  final bool showSettingsIcon;

  const CustomHeader({
    super.key,
    this.title,
    this.username,
    this.npm,
    this.profileImageUrl,
    this.showNotificationIcon = false,
    this.showSettingsIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 110,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              // Title di tengah
              if (title != null)
                Positioned(
                  top:
                      55,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      title!,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: 'Righteous',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),

              // Info profil (kiri bawah)
              if (username != null || npm != null || profileImageUrl != null)
                Positioned(
                  bottom: 15,
                  left: 0,
                  child: Row(
                    children: [
                      if (profileImageUrl != null)
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF2DBAB1),
                              width: 3,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(profileImageUrl!),
                          ),
                        ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (username != null)
                            Text(
                              username!,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Righteous',
                              ),
                            ),
                          if (npm != null)
                            Text(
                              npm!,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontFamily: 'RobotoSlab',
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),

              // Ikon kanan bawah
              if (showNotificationIcon || showSettingsIcon)
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Row(
                    children: [
                      if (showNotificationIcon)
                        IconButton(
                          icon: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                      if (showSettingsIcon)
                        IconButton(
                          icon: const Icon(Icons.settings, color: Colors.white),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ),

        Positioned(
          top: -100,
          right: -150,
          child: Container(
            width: 280,
            height: 280,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
