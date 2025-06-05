import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:siakad/widgets/custom_header.dart';
import 'package:siakad/widgets/content_container.dart';
import 'package:siakad/widgets/tugas_card.dart';
import 'package:siakad/widgets/section_header.dart';
import 'package:siakad/widgets/daftar_mata_kuliah_card.dart';
import 'package:siakad/services/image_services.dart';

class ELearningDashboard extends StatefulWidget {
  const ELearningDashboard({super.key});

  @override
  State<ELearningDashboard> createState() => _ELearningDashboardState();
}

class _ELearningDashboardState extends State<ELearningDashboard> {
  List<Map<String, String>> mataKuliahList = [];
  ImageServices imageServices = ImageServices();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    ambilDataMataKuliah();
  }

  Future<void> ambilDataMataKuliah() async {
    try {
      List<Map<String, String>> data = await imageServices.fetchImageNews();

      setState(() {
        mataKuliahList = data;
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
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.primary,
      body: Column(
        children: [
          const CustomHeader(title: 'Elearning'),
          Expanded(
            child: ContentContainer(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    //* TugasCard
                    child: TugasCard(
                      tenggatWaktu: '1',
                      mataKuliah: 'Rekayasa web praktik',
                    ),
                  ),

                  SizedBox(height: 20),

                  //* Section header
                  SectionHeader(
                    title: 'Daftar Matakuliah',
                    icon: SvgPicture.asset('assets/svg/chrome_reader_mode.svg'),
                  ),

                  const SizedBox(height: 5),

                  //* DaftarMataKuliahCard
                  Expanded(
                    child:
                        isLoading
                            ? Center(child: CircularProgressIndicator())
                            : mataKuliahList.isEmpty
                            ? Center(child: Text('Tidak ada data'))
                            : ListView.builder(
                              padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                              itemCount: mataKuliahList.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: DaftarMataKuliahCard(
                                    imageUrl:
                                        mataKuliahList[index]['imageUrl']!,
                                    mataKuliah: mataKuliahList[index]['title']!,
                                    presentase: 50 + (index * 5),
                                  ),
                                );
                              },
                            ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
