import 'package:flutter/material.dart';
import 'package:EncodeTHEMElaunch/air.dart';
import 'package:EncodeTHEMElaunch/earth.dart';
import 'package:EncodeTHEMElaunch/ether.dart';
import 'package:EncodeTHEMElaunch/fire.dart';
import 'package:EncodeTHEMElaunch/water.dart';
import 'ElementComponents/elements.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final Size _size = MediaQuery.of(context).size;

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
                height: _size.height/1.45,
                width: _size.width,
              ),
            ),
            // Elementrix Text
            Positioned(
              top: MediaQuery.of(context).size.height / 2.9 ,
              left: MediaQuery.of(context).size.width / 15,
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
                height: _size.height/1.75,
                width: _size.width,
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
              width: _size.width/3.3,
              top: MediaQuery.of(context).size.height / 2 ,
              left: MediaQuery.of(context).size.width / 15,
              child: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Earth()),
                      );
                    },
                    child: EarthWidget(check: false,size: false,),
                  );
                },
              ),
            ),
            // Air Element
            Positioned(
              width: _size.width/3.3,
              top: MediaQuery.of(context).size.height / 2 ,
              right: MediaQuery.of(context).size.width / 15,
              child: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Air()),
                      );
                    },
                    child: AirWidget(check: false,size: false,),
                  );
                },
              ),
            ),
            // Ether Element
            Positioned(
              width: _size.width/3.3,
              bottom: MediaQuery.of(context).size.height / 4.6,
              right: MediaQuery.of(context).size.width / 2.9,
              child: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Ether()),
                      );
                    },
                    child: EtherWidget(check: false, size: false,),
                  );
                },
              ),
            ),
            // Water Element
            Positioned(
              width: _size.width/3.3,
              bottom: MediaQuery.of(context).size.height / 14,
              right: MediaQuery.of(context).size.width / 15,
              child: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Water()),
                      );
                    },
                    child: WaterWidget(check: false, size: false,),
                  );
                },
              ),
            ),
            // Fire Element
            Positioned(
              width: _size.width/3.3,
              bottom: MediaQuery.of(context).size.height / 14,
              left: MediaQuery.of(context).size.width / 15,
              child: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Fire()),
                      );
                    },
                    child: FireWidget(check: false,size: false,),
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
