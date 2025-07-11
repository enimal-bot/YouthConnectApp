import 'package:flutter/material.dart';

class OffersSection extends StatelessWidget {
  const OffersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Offres',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Table(
          border: TableBorder.all(color: Colors.grey),
          children: [
            TableRow(
              children: [
                _buildTableCell('Stage', isHeader: true),
                _buildTableCell('Emplois', isHeader: true),
                _buildTableCell('Appel d\'offres', isHeader: true),
              ],
            ),
            const TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Emissions et communiqués'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(''),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(''),
                ),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Emissions radios'),
                _buildTableCell('Emissions télé'),
                _buildTableCell('Chat'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTableCell(String text, {bool isHeader = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}