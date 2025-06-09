import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:siakad/widgets/custom_header.dart';
import 'package:siakad/widgets/content_container.dart';
import 'package:siakad/widgets/tugas_card.dart';
import 'package:siakad/widgets/section_header.dart';
import 'package:siakad/widgets/matkul_task_progress_card.dart';
import 'package:siakad/services/image_services.dart';
import 'package:siakad/screens/elearning/e_learning_task_list.dart';

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Tugas',
                          style: TextStyle(
                            fontFamily: 'Sarabun',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromRGBO(0, 0, 0, 0.75),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
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
                                  child: MatkulTaskProgressCard(
                                    imageUrl:
                                        mataKuliahList[index]['imageUrl']!,
                                    mataKuliah: mataKuliahList[index]['title']!,
                                    presentase: 50 + (index * 5),
                                    onNavigate: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) => ELearningTaskList(),
                                        ),
                                      );
                                    },
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
