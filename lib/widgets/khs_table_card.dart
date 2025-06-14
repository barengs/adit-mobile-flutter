import 'package:flutter/material.dart';

class KhsTableCard extends StatelessWidget {
  const KhsTableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: _buildFullTable());
  }

  Widget _buildFullTable() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Header
          _buildHeaderRow(),

          // Data
          _buildDataRow([
            '1',
            'CS101',
            'Pemrograman',
            '3',
            '1',
            'A',
            '85',
            'A',
            '4.0',
            '12.0',
          ]),
          _buildDataRow([
            '2',
            'CS102',
            'Struktur Data',
            '3',
            '2',
            'B',
            '78',
            'B',
            '3.0',
            '9.0',
          ]),
          _buildDataRow([
            '3',
            'CS103',
            'Basis Data',
            '3',
            '2',
            'A',
            '90',
            'A',
            '4.0',
            '12.0',
          ]),
          _buildDataRow([
            '4',
            'CS104',
            'Algoritma',
            '2',
            '2',
            'A',
            '88',
            'A',
            '4.0',
            '8.0',
          ]),
          _buildDataRow([
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
          ]),
          _buildDataRow([
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
          ]),
          _buildDataRow([
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
          ]),

          // Footer
          _buildFooterRow(),
        ],
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(45, 186, 177, 0.72),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
        ),
      ),
      child: Row(
        children: [
          _buildHeaderCell('No', 50),
          _buildHeaderCell('Kode MK', 100),
          _buildHeaderCell('Mata Kuliah', 200),
          _buildHeaderCell('SKS', 50),
          _buildHeaderCell('Semester', 100),
          _buildHeaderCell('Kelas', 80),
          _buildHeaderCell('UTS', 80),
          _buildHeaderCell('Nilai', 80),
          _buildHeaderCell('Bobot', 80),
          _buildHeaderCell('Total', 80),
        ],
      ),
    );
  }

  Widget _buildDataRow(List<String> data) {
    final widths = [
      50.0,
      100.0,
      200.0,
      50.0,
      100.0,
      80.0,
      80.0,
      80.0,
      80.0,
      80.0,
    ];
    return Row(
      children: List.generate(data.length, (index) {
        return _buildDataCell(data[index], widths[index]);
      }),
    );
  }

  Widget _buildHeaderCell(String text, double width) {
    return Container(
      width: width,
      height: 40,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        border: Border(right: BorderSide(color: Colors.white, width: 1)),
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
        border: Border(right: BorderSide(color: Colors.grey[300]!, width: 1)),
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
    return Container(
      width: 900,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(229, 229, 229, 0.75),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Total SKS: 9 SKS',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 0, 0, 0.75),
            ),
          ),
          Text(
            'Total Nilai: 33.0',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 0, 0, 0.75),
            ),
          ),
          Text(
            'IP Semester: 3.66',
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
