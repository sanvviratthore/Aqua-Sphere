import 'package:aqua_sphere/community.dart';
import 'package:aqua_sphere/submit_tip.dart';
import 'package:aqua_sphere/tips.dart';
import 'package:flutter/material.dart';

void main() => runApp(AquaSphereApp());

class AquaSphereApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AquaSphere',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/tips': (context) => TipsPage(),
        '/community': (context) => CommunityPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AquaSphere'),
      ),
      drawer: AppDrawer(),
      body: const Center(
        child: Text('Welcome to AquaSphere'),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text('AquaSphere Menu'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Water-Saving Tips'),
            onTap: () {
              Navigator.pushNamed(context, '/tips');
            },
          ),
          ListTile(
            title: Text('Community Forum'),
            onTap: () {
              Navigator.pushNamed(context, '/community');
            },
          ),
          // Add the Submit a Tip option here
          ListTile(
            title: Text('Submit a Tip'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SubmitTipPage()));
            },
          ),
        ],
      ),
    );
  }
}