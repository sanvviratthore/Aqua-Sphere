import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water-Saving Tips'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Tip 1: Fix Leaky Faucets'),
            subtitle: Text('Fixing leaky faucets can save up to 10,000 gallons of water per year.'),
          ),
          ListTile(
            title: Text('Tip 2: Use Drip Irrigation'),
            subtitle: Text('Drip irrigation is an efficient way to water plants with minimal water loss.'),
          ),
        ],
      ),
    );
  }
}
