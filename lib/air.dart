import 'package:flutter/material.dart';
import 'package:EncodeTHEMElaunch/ElementComponents/elements.dart';

class Air extends StatelessWidget {
  const Air({super.key});

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
                height: 426,
                width: 430,
              ),
            ),
            // Elementrix Text
            Positioned(
              bottom: MediaQuery.of(context).size.height / 2 - 100,
              left: MediaQuery.of(context).size.width / 2 - 155.5,
              child: const SizedBox(
                child: Text(
                  'Air',
                  style: TextStyle(fontSize: 32, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // Overlaying Bottom Container (White)
            Positioned(
                bottom: MediaQuery.of(context).size.height / 2 - 350,
                left: MediaQuery.of(context).size.width / 2 - 150,
                child: AirWidget(check: true, size: true,)),
          ],
        ),
      ),
    );
  }
}
