import 'package:flutter/material.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          title: const Text('Communities'),
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            _newcommunitybar(),
          ],
        ),
      ),
    );
  }
}

Widget _newcommunitybar(){
  return Row(
    children: [
      Container(
        width: 50,
        height: 80,
        color: Colors.black,
      ),
    ],
  );
}