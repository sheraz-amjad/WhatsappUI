import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.transparent,
              title: const Text('Updates'),
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
            body: Column(
              children: [
                _Text(),
                _buildStoryButton(buildstorybutton: true),
                _singleline(),
                _aftersingleline(),
                Expanded(child: _buildchannels(context)),
              ],
            ),
            floatingActionButton: _buildFloatingActionButton(),
          ),
        ),
      ),
    );
  }

  Widget _Text() {
    Colors.transparent;
    return Container(
      width: double.infinity,
      color: Colors.white,
      margin: const EdgeInsets.all(4.0), // Set the margin around the text
      padding:
          const EdgeInsets.all(6.0), // Set the padding inside the container
      child: const Align(
        alignment: Alignment
            .centerLeft, // Align the text to the left (or any other alignment)
        child: Text(
          'Status',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight:
                FontWeight.bold, // Set the font size// Set the font weight
            color: Colors.black, // Set the text color
          ),
        ),
      ),
    );
  }

  Widget _buildStoryButton({required bool buildstorybutton}) {
    Colors.transparent;
    List<String> text = [
      'Your story',
      'Sheraz',
      'Saqib',
      'Faheel',
      'Fahad',
      'Waleed',
      'Sial'
    ];
    return Container(
      width: double.infinity,
      color: Colors.white,
      height: 120, // Set a fixed height to prevent vertical overflow
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: text.map((name) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.black,
                      ),
                      if (name == 'Your story')
                        const Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 12,
                            child: Icon(
                              Icons.add_circle_outline_outlined,
                              color: Colors.green,
                            ),
                          ),
                        ),
                    ],
                  ),
                  Text(
                    name,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _singleline() {
    Colors.transparent;
    return Container(
      height: 0.5,
      width: double.infinity,
      color: Colors.grey,
    );
  }

  Widget _aftersingleline() {
    Colors.transparent;
    return Container(
      width: double.infinity, // Adjust the width to accommodate both texts
      height: 60.0,
      margin: const EdgeInsets.all(0.0), // Set the margin around the container
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between the texts
        children: [
          const Text(
            'Channels',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold, // Set the font weight
              color: Colors.black, // Set the text color
            ),
          ),
          Row(
            children: [
              const Text(
                'Explore',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green, // Set the text color
                ),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward, color: Colors.green), // Change icon and color as needed
                onPressed: () {
                  // Add action for the button here
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildchannels(BuildContext context) {
    Colors.transparent;
    List<String> names = [
      'Geo News',
      'NADRA',
      'Pakistan Cricket Team',
      'Everyday Pakistan',
      'WhatsApp',
      'PSL',
      'Mark Zuckerberg',
      'ARY',
      'Bol News',
    ];

    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (context, index) {
        return _buildchannelItems(context, names[index]);
      },
    );
  }


  Widget _buildchannelItems(BuildContext context, String name){
    Colors.transparent;
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHVzZXIlMjBwcm9maWxlfGVufDB8fDB8fHww'),
        ),
        title: Row(
          children: [
            Text(name),
            const Spacer(),
            const Text('9:58 am'),
          ],
        ),
        subtitle: const Text('Hi! How are you?'),
        onTap: () {},
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    Colors.transparent;
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          right: 0,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: const Icon(Icons.camera_alt, color: Colors.white),
          ),
        ),
        Positioned(
          bottom: 70,
          right: 0,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child: const Icon(Icons.edit, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
