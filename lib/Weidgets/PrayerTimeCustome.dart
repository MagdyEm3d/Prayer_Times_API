import 'package:flutter/material.dart';

class PrayerTimeCustome extends StatelessWidget {
  final String PrayerName;
  final String PrayerTime;

  const PrayerTimeCustome({required this.PrayerName, required this.PrayerTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade600,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 2), 
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            PrayerName,
            style: TextStyle(
              
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black, 
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4),
          Text(
            PrayerTime,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
