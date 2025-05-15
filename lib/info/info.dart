import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:siakad/widgets/info_cards.dart';
import 'package:siakad/constant/app_colors.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  InfoState createState() => InfoState();
}

class InfoState extends State<Info> {
  List<Map<String, String>> infoItems = [];

  @override
  void initState() {
    super.initState();
    fetchDummyNews();
  }

  Future<void> fetchDummyNews() async {
    final response = await http.get(
      Uri.parse('https://picsum.photos/v2/list?page=3&limit=5'),
    );

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);

      setState(() {
        infoItems = data.map<Map<String, String>>((item) {
          return {
            'imageUrl': item['download_url'],
            'title': 'Gambar oleh ${item['author']}',
            'description':
                'Non culpa est esse aliqua aliqua officia duis excepteur do irure irure reprehenderit cupidatat id. Aliquip irure mollit duis elit. Proident ex nulla magna veniam nulla veniam ut. Dolore et aliqua reprehenderit aute ea officia ipsum sit do labore fugiat aute qui. Exercitation ullamco sit voluptate aute elit dolore aute id id ea veniam.'
          };
        }).toList();
      });
    } else {
      debugPrint('Gagal mengambil data dari API');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: infoItems.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              itemCount: infoItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: InfoCards(
                    imageUrl: infoItems[index]['imageUrl']!,
                    title: infoItems[index]['title']!,
                    description: infoItems[index]['description']!,
                  ),
                );
              },
            ),
    );
  }
}
