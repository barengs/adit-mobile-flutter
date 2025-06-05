// File: lib/image_services.dart
import 'package:http/http.dart' as http;
import 'dart:convert';

class ImageServices {
  // Fungsi ini HANYA ambil data dan return hasilnya
  Future<List<Map<String, String>>> fetchImageNews() async {
    final response = await http.get(
      Uri.parse('https://picsum.photos/v2/list?page=3&limit=5'),
    );

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);

      // RETURN data yang sudah diubah
      return data.map<Map<String, String>>((item) {
        return {
          'imageUrl': item['download_url'],
          'title': 'Gambar oleh ${item['author']}',
          'description':
              'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Necessitatibus commodi officiis asperiores ratione iure deserunt reiciendis totam blanditiis veritatis? Doloremque ratione unde autem culpa! Repudiandae beatae atque iusto maiores quae.',
        };
      }).toList();
    } else {
      // Kalau gagal, lempar error
      throw Exception('Gagal mengambil data dari API');
    }
  }
}
