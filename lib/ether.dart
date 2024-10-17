import 'package:flutter/material.dart';
import 'package:EncodeTHEMElaunch/ElementComponents/elements.dart';

class Ether extends StatelessWidget {
  const Ether({super.key});

  @override
  Widget build(BuildContext context) {

    final _size = MediaQuery.of(context).size;

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
                height: _size.height/1.85,
                width: _size.width,
              ),
            ),
            // Elementrix Text
            Positioned(
              bottom: _size.height / 2.4,
              left: _size.width / 2.8,
              child: const SizedBox(
                child: Text(
                  'Ether',
                  style: TextStyle(fontSize: 32, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // Overlaying Bottom Container (White)
            Positioned(
              width: _size.width,
              bottom: _size.height / 8,
              child: Center(  
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                    ),
                    child: EtherWidget(check: true, size: true,)
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
