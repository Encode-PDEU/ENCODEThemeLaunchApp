import 'package:flutter/material.dart';

class Elements extends StatelessWidget {
  final String text;
  const Elements({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return const EarthWidget();
  }
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
  const EarthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return buildIconContainer(
      const AssetImage('assets/images/earth.jpg'),
    );
  }
}

class AirWidget extends StatelessWidget {
  const AirWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return buildIconContainer(
      const AssetImage('assets/images/air.jpg'),
    );
  }
}

class WaterWidget extends StatelessWidget {
  const WaterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return buildIconContainer(
      const AssetImage('assets/images/water.jpg'),
    );
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
  const EtherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return buildIconContainer(
      const AssetImage('assets/images/ether.jpg'),
    );
  }
}
