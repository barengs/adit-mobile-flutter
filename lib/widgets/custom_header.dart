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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: Color(0xFF21ABA5),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Center(
              child: Text(
                title!,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Righteous',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 20), // Dikurangi dari 30 menjadi 20
          ],

          // Row utama dengan layout terpisah
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Kiri: Profil user dengan padding untuk menggeser ke bawah
              if (username != null || npm != null || profileImageUrl != null)
                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ), // Adjust this value as needed
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
                      if (profileImageUrl != null) SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (username != null)
                            Text(
                              username!,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Righteous',
                              ),
                            ),
                          if (npm != null)
                            Text(
                              npm!,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontFamily: 'RobotoSlab',
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                )
              else
                SizedBox.shrink(),

              // Kanan: Ikon notifikasi dan setting dengan padding terpisah
              if (showNotificationIcon || showSettingsIcon)
                Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                  ), // Nilai padding untuk notif & setting
                  child: Row(
                    children: [
                      if (showNotificationIcon)
                        IconButton(
                          icon: Icon(Icons.notifications, color: Colors.white),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                      if (showSettingsIcon)
                        IconButton(
                          icon: Icon(Icons.settings, color: Colors.white),
                          iconSize: 30,
                          onPressed: () {},
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
