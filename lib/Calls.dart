import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            title: const Text('Calls'),
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
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
          body: const Column(
            children: <Widget>[],
          ),
          floatingActionButton: _buildFloatingActionButton(),
        ),
      ),
    );
  }
}

Widget _buildFloatingActionButton() {
  return Stack(
    children: <Widget>[
      Positioned(
        bottom: 0,
        right: 0,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.add_call),
        ),
      ),
      Positioned(
        bottom: 70,
        right: 0,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Icon(Icons.keyboard),
        ),
      ),
    ],
  );
}
