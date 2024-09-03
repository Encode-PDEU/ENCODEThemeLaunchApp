// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

Widget buildModelContainer(String modelpath, bool check, bool size) {
  return Container(
    height: size ? 200 : 112,
    width: size? 300 : 121,
    decoration: BoxDecoration(
        color: const Color.fromRGBO(208, 218, 223, 100) ,
        borderRadius: BorderRadius.circular(18.0)),
    child: SizedBox(
      height: 78.75,
      width: 76.69,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: CircleAvatar(
          radius: 76.0,
          backgroundColor: Colors.black,
          child: ModelViewer(
            alt: modelpath,
            src: modelpath,
            ar: check,
            cameraControls: true,
            autoPlay: true,
          ),
        )
      ),
    ),
  );
}

Widget buildIconContainer(ImageProvider iconImage) {
  return Container(
    height: 112,
    width: 121,
    decoration: BoxDecoration(
        color: const Color.fromRGBO(208, 218, 223, 100),
        borderRadius: BorderRadius.circular(18.0)),
    child: SizedBox(
      height: 78.75,
      width: 76.69,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: CircleAvatar(
          radius: 76.0,
          backgroundColor: Colors.transparent,
          backgroundImage: iconImage,
        ),
      ),
    ),
  );
}

class EarthWidget extends StatelessWidget {
  bool check;
  bool size;
  EarthWidget({super.key, required this.check, required this.size});

  @override
  Widget build(BuildContext context) {
    return buildModelContainer("assets/models/earth_model.glb",check,size);
  }
}

class AirWidget extends StatelessWidget {
  bool check;
  bool size;
  AirWidget({super.key, required this.check, required this.size});

  @override
  Widget build(BuildContext context) {
    return buildModelContainer("assets/models/air_model.glb",check,size);
  }
}

class WaterWidget extends StatelessWidget {
  bool check;
  bool size;
  WaterWidget({super.key, required this.check, required this.size});

  @override
  Widget build(BuildContext context) {
    return buildModelContainer("assets/models/water_model.glb",check,size);
  }
}

class FireWidget extends StatelessWidget {
  const FireWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return buildIconContainer(
      const AssetImage('assets/images/fire.jpg'),
    );
  }
}

class EtherWidget extends StatelessWidget {
  bool check;
  bool size;
  EtherWidget({super.key, required this.check, required this.size});

  @override
  Widget build(BuildContext context) {
    return buildModelContainer("assets/models/space_model.glb",check,size);
  }
}
