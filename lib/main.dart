import 'package:cryptoland/ui/components/appBar.dart';
import 'package:cryptoland/ui/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet CryptoLand',
      home: MainApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

enum TabItem { home, explore, notification, setting }

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}
class _MainAppState extends State<MainApp> {
  TabItem _currentItem = TabItem.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child: appBar(
            title: 'Bitcoin Main Network',
            right: Icon(Icons.qr_code_scanner_outlined,color: Colors.black54)),
      ),
      body: _buildScreen(),
    );
  }

  Widget _buildScreen() {
    switch (_currentItem) {
      case TabItem.home:
        return HomeScreen();
      default:
        return HomeScreen();
    }
  }
}
