import 'package:apiprayer/Models/PrayerTimeModel.dart';
import 'package:apiprayer/Services/PrayerTimeService.dart';
import 'package:flutter/material.dart';

class PrayerTimeProvider extends ChangeNotifier
{
  PrayerTimeModel?prayertimemodel;
  getalldata()async
  {
    prayertimemodel=await PrayerTimeService.getdata();
    notifyListeners();
  }
}