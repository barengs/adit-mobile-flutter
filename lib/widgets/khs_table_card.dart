import 'package:flutter/material.dart';

class KhsTableCard extends StatelessWidget {
  const KhsTableCard({super.key});

  final List<double> widths = const [
    50.0, // Panjang kolom No
    100.0, // Panjang Kolom Kode MK
    180.0, // panjang Kolom Mata kuliah
    50.0, // Panjang Kolom SKS
    100.0, // Panjang Kolom Semester
    80.0, // Panjang kolom Kelas
    80.0, // panjang Kolom UTS
    80.0, // Panjang kolom Nilai
    80.0, // Panjang kolom Bobot
    80.0, // Panjang kolom Total
  ];

  @override
  Widget build(BuildContext context) {
    return Container(child: _buildFullTable());
  }

  Widget _buildFullTable() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildHeaderRow(),
          ..._buildAllDataRows(),
          _buildFooterRow(),
        ],
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(45, 186, 177, 0.72),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
        ),
      ),
      child: Row(
        children: [
          _buildHeaderCell('No', widths[0]),
          _buildHeaderCell('Kode MK', widths[1]),
          _buildHeaderCell('Mata Kuliah', widths[2]),
          _buildHeaderCell('SKS', widths[3]),
          _buildHeaderCell('Semester', widths[4]),
          _buildHeaderCell('Kelas', widths[5]),
          _buildHeaderCell('UTS', widths[6]),
          _buildHeaderCell('Nilai', widths[7]),
          _buildHeaderCell('Bobot', widths[8]),
          _buildHeaderCell('Total', widths[9]),
        ],
      ),
    );
  }

  List<Widget> _buildAllDataRows() {
    final data = [
      ['1', 'CS101', 'Pemrograman', '3', '1', 'A', '85', 'A', '4.0', '12.0'],
      ['2', 'CS102', 'Struktur Data', '3', '2', 'B', '78', 'B', '3.0', '9.0'],
      ['3', 'CS103', 'Basis Data', '3', '2', 'A', '90', 'A', '4.0', '12.0'],
      ['4', 'CS104', 'Algoritma', '2', '2', 'A', '88', 'A', '4.0', '8.0'],
      [
        '5',
        'CS105',
        'Jaringan Komputer',
        '3',
        '3',
        'B',
        '75',
        'B',
        '3.0',
        '9.0',
      ],
      [
        '6',
        'CS106',
        'Pemrograman Web',
        '3',
        '3',
        'A',
        '91',
        'A',
        '4.0',
        '12.0',
      ],
      [
        '7',
        'CS107',
        'Kecerdasan Buatan',
        '3',
        '4',
        'B',
        '82',
        'B',
        '3.0',
        '9.0',
      ],
    ];

    return data.map((row) => _buildDataRow(row)).toList();
  }

  Widget _buildDataRow(List<String> data) {
    return Row(
      children: List.generate(data.length, (index) {
        return _buildDataCell(data[index], widths[index]);
      }),
    );
  }

  Widget _buildHeaderCell(String text, double width) {
    return Container(
      width: width,
      height: 56,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        border: Border(left: BorderSide(color: Colors.white, width: 1)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(0, 0, 0, 0.75),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildDataCell(String text, double width) {
    return Container(
      width: width,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // border: Border(right: BorderSide(color: Colors.grey[300]!, width: 1)),
        border: Border.all(color: Colors.grey[300]!, width: 0.5),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(0, 0, 0, 0.75),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildFooterRow() {
    double totalWidth = widths.reduce((a, b) => a + b);

    return Container(
      width: totalWidth,
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(229, 229, 229, 0.75),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Total SKS: 20 SKS',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 0, 0, 0.75),
            ),
          ),
          Text(
            'Total Nilai: 71.0',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 0, 0, 0.75),
            ),
          ),
          Text(
            'IP Semester: 3.55',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 0, 0, 0.75),
            ),
          ),
        ],
      ),
    );
  }
}
