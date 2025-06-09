import 'package:flutter/material.dart';

class MatkulTaskProgressCard extends StatelessWidget {
  final String? imageUrl;
  final String mataKuliah;
  final double presentase;
  final VoidCallback onNavigate;

  const MatkulTaskProgressCard({
    super.key,
    this.imageUrl,
    required this.mataKuliah,
    required this.presentase,
    required this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return InkWell(
      onTap: onNavigate,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Color.fromRGBO(196, 196, 196, 0.42),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withValues(alpha: 0.4),
              spreadRadius: -5,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // *Gambar
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

            // *Konten
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Judul
                    Text(
                      mataKuliah,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Sarabun',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(196, 196, 196, 1.0),
                      ),
                    ),
                    Text(
                      mataKuliah,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Sarabun',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 0, 0, 0.75),
                      ),
                    ),
                    const SizedBox(height: 5),

                    // *Progress bar
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final maxWidth = constraints.maxWidth;
                        final fillWidth = maxWidth * (presentase / 100);
                        return Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: const Color.fromRGBO(
                                    241,
                                    241,
                                    241,
                                    1.0,
                                  ),
                                  width: 2,
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              width: fillWidth.clamp(0, maxWidth),
                              height: 8,
                              decoration: BoxDecoration(
                                color: colors.secondary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: const EdgeInsets.symmetric(vertical: 1),
                            ),
                          ],
                        );
                      },
                    ),

                    const SizedBox(height: 5),

                    // *Persentase
                    Text(
                      '${presentase.toInt()}% Selesai',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 13,
                        fontFamily: 'Sarabun',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 0, 0, 0.75),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
