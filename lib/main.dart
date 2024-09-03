import 'package:flutter/material.dart';
import 'package:EncodeTHEMElaunch/air.dart';
import 'package:EncodeTHEMElaunch/earth.dart';
import 'package:EncodeTHEMElaunch/ether.dart';
import 'package:EncodeTHEMElaunch/fire.dart';
import 'package:EncodeTHEMElaunch/water.dart';
// import 'package:flutter_ra_availability/flutter_ra_availability.dart';
// import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'ElementComponents/elements.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black26,
        body: Stack(
          children: [
            // Background Container (Blue)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(146, 170, 190, 88),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                height: 568,
                width: 430,
              ),
            ),
            // Elementrix Text
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 120,
              left: MediaQuery.of(context).size.width / 2 - 155.5,
              child: const SizedBox(
                child: Text(
                  'Elementrix',
                  style: TextStyle(fontSize: 32, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // Overlaying Bottom Container (White)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 481,
                width: 412,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(247, 247, 247, 46),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
            ),
            // Earth Element (Tap to Navigate)
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 10,
              left: MediaQuery.of(context).size.width / 2 - 170.5,
              child: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Earth()),
                      );
                    },
                    child: const EarthWidget(),
                  );
                },
              ),
            ),
            // Air Element
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 10,
              right: MediaQuery.of(context).size.width / 2 - 170.5,
              child: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Air()),
                      );
                    },
                    child: const AirWidget(),
                  );
                },
              ),
            ),
            // Ether Element
            Positioned(
              bottom: MediaQuery.of(context).size.height / 2 - 265,
              right: MediaQuery.of(context).size.width / 2 - 65.5,
              child: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Ether()),
                      );
                    },
                    child: const EtherWidget(),
                  );
                },
              ),
            ),
            // Water Element
            Positioned(
              bottom: MediaQuery.of(context).size.height / 2 - 420,
              right: MediaQuery.of(context).size.width / 2 - 170.5,
              child: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Water()),
                      );
                    },
                    child: const WaterWidget(),
                  );
                },
              ),
            ),
            // Fire Element
            Positioned(
              bottom: MediaQuery.of(context).size.height / 2 - 420,
              left: MediaQuery.of(context).size.width / 2 - 170.5,
              child: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Fire()),
                      );
                    },
                    child: const FireWidget(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
