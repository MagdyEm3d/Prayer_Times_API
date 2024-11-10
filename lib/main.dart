import 'package:apiprayer/Providers/PrayerTimeProvider.dart';
import 'package:apiprayer/Screens/PrayerTimeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>PrayerTimeProvider()),
    ],child: MaterialApp(
      home: PrayerTimeScreen(),
    ),);
    
  }
}