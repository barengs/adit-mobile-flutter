import 'package:flutter/material.dart';
import 'package:siakad/constant/app_colors.dart';

class InfoCards extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? description;
  final VoidCallback? onTap;

  const InfoCards({
    super.key,
    this.imageUrl,
    this.title,
    this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withValues(alpha: 0.4),
            spreadRadius: -5,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (imageUrl != null)
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Image.network(
                imageUrl!,
                height: 116,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder:
                    (_, __, ___) => Container(
                      height: 116,
                      width: double.infinity,
                      color: Colors.grey[300],
                      child: const Icon(Icons.broken_image, size: 50),
                    ),
              ),
            ),

          Padding(
            padding: const EdgeInsets.fromLTRB(
              12,
              12,
              12,
              0,
            ), // Mengurangi padding bottom
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null)
                  Text(
                    title!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Sarabun',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                if (description != null)
                  Text(
                    description!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      fontFamily: 'Sarabun',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
              ],
            ),
          ),

          // Button
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 14, 12, 14),
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: AppColors.accent,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Selanjutnya',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Sarabun',
                        fontWeight: FontWeight.w600,
                        color: AppColors.textWhite,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
