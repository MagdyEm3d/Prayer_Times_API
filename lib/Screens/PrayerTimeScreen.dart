import 'package:apiprayer/Providers/PrayerTimeProvider.dart';
import 'package:apiprayer/Weidgets/PrayerTimeCustome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PrayerTimeScreen extends StatelessWidget {
  const PrayerTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Prayer Time",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),

          ),
          backgroundColor: Colors.blue,
        ),
        body: Consumer<PrayerTimeProvider>(
          builder: (context, objectprovider, child) {
            var objectmodel = objectprovider.prayertimemodel;
            if (objectmodel == null) {
              objectprovider.getalldata();
              return Center(child: CircularProgressIndicator());
            } else {
              final prayernamee = objectmodel.data.keys.toList();
              final prayertimee = objectmodel.data.values.toList();

              return Container(
               
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 50,
                    mainAxisSpacing: 20,
                    childAspectRatio: 2,
                     
                  ),
                  itemCount: prayernamee.length,
                  itemBuilder: (context, index) {
                    return PrayerTimeCustome(
                      PrayerName: prayernamee[index],
                      PrayerTime: prayertimee[index],
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
