import 'package:flutter/material.dart';
import 'package:pokeballar/ElementComponents/elements.dart';

class Water extends StatelessWidget {
  const Water({super.key});

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
                  'Water',
                  style: TextStyle(fontSize: 32, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // Overlaying Bottom Container (White)
            Positioned(
                bottom: MediaQuery.of(context).size.height / 2 - 300,
                left: MediaQuery.of(context).size.width / 2 - 60.5,
                child: WaterWidget()),
            Positioned(
                bottom: MediaQuery.of(context).size.height / 2 - 370,
                left: MediaQuery.of(context).size.width / 2 - 60.5,
                child: Container(
                  padding:const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(217, 217, 217, 100)),
                  child: const Row(children: [
                    Icon(Icons.camera_enhance),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "view in 3D",
                      style: TextStyle(fontSize: 15),
                    )
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}
