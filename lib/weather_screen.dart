import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/additional_info_card.dart';
import 'package:weather_app/hourly_focast_card.dart';
// import 'package:http/http.dart' as http;

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});
  // Future getCurrentWeather() async {
  //   http.get(Uri.parse(uri),);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'weather app',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          // Icon(Icons.refresh)

          // gestureDetector 2. Inkwell ->splash effect deta hai ye
          // GestureDetector(
          //   onTap: (){
          //     print("refresh");
          //   },
          //   child: Icon(Icons.refresh),
          //   ),
          IconButton(
            onPressed: () {
              // print('refresh');
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            '300k',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Icon(Icons.cloud, size: 64),
                          const SizedBox(height: 16),
                          Text('Rain', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Weather Forcast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyFocastCard(),
                  HourlyFocastCard(),
                  HourlyFocastCard(),
                  HourlyFocastCard(),
                  HourlyFocastCard(),

                  //five time pasted
                ],
              ),
            ),
            //weathe forecast cards
            const SizedBox(height: 20),
            const Text(
              'Additional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoCard(
                  icon: Icons.water_drop,
                  label: 'Humidity',
                  val: "94",
                ),
                AdditionalInfoCard(
                  icon: Icons.wb_twilight_rounded,
                  label: 'Windy',
                  val: "7.5",
                ),
                AdditionalInfoCard(
                  icon: Icons.umbrella,
                  label: 'rainy',
                  val: '1011',
                ),
              ],
            ),

            //additional info
          ],
        ),
      ),
    );
  }
}
