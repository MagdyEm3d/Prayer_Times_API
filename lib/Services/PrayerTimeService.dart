import 'package:apiprayer/Models/PrayerTimeModel.dart';
import 'package:dio/dio.dart';

class PrayerTimeService
{
  static Dio dio=Dio();
  static Future<PrayerTimeModel>getdata()async
  {
    Response response=await dio.get("https://api.aladhan.com/v1/timingsByCity/27-10-2024?city=Giza&country=Egypt&date=%24date");
    try
    {
      if(response.statusCode==200)
    {
      return PrayerTimeModel.jsonform(response.data);
    }else
    {
      throw Exception("Fail to get data");
    }
    }catch(ex)
    {
      throw Exception("Error ${ex}");
    }


  }
}