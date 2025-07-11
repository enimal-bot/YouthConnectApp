import 'package:flutter/material.dart';

class OpportunitiesSection extends StatelessWidget {
  const OpportunitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Opportunités',
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
                _buildTableCell('Bourses', isHeader: true),
                _buildTableCell('Formations', isHeader: true),
                _buildTableCell('Marketplace', isHeader: true),
              ],
            ),
            TableRow(
              children: [
                _buildTableCell('Accueil'),
                _buildTableCell('Actualités'),
                _buildTableCell('Ressources'),
              ],
            ),
            const TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Forum'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Compte'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Accu'),
                ),
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