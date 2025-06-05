import 'package:flutter/material.dart';
import 'package:siakad/widgets/info_cards.dart';
import 'package:siakad/services/image_services.dart'; // Import service

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  InfoState createState() => InfoState();
}

class InfoState extends State<Info> {
  // STEP 1: Variable untuk simpan data
  List<Map<String, String>> infoItems = [];
  ImageServices imageServices = ImageServices();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // STEP 2: Panggil fungsi ambil data
    ambilDataInfo();
  }

  // STEP 3: Fungsi untuk ambil data
  Future<void> ambilDataInfo() async {
    try {
      // Ambil data dari service
      List<Map<String, String>> data = await imageServices.fetchImageNews();
      
      // Update UI
      setState(() {
        infoItems = data;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      debugPrint('Error mengambil data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : infoItems.isEmpty
              ? const Center(child: Text('Tidak ada data'))
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: infoItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: InfoCards(
                        imageUrl: infoItems[index]['imageUrl'],
                        title: infoItems[index]['title'],
                        description: infoItems[index]['description'],
                      ),
                    );
                  },
                ),
    );
  }
}