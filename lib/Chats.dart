import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Chats(),
    );
  }
}

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            title: const Text('WhatsApp'),
            backgroundColor: Colors.white,
            titleTextStyle: const TextStyle(
              color: Colors.green,
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
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
            children: <Widget>[
              _buildSearchBar(),
              _buildFilterButtons(),
              Expanded(child: _buildChatList(context)),
            ],
          ),
          floatingActionButton: _buildFloatingActionButtons(),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Ask Meta AI or Search',
            filled: true,
            fillColor: Colors.white30,
            prefixIcon: Icon(Icons.circle_outlined, color: Colors.blue),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10.0),
          ),
        ),
      ),
    );
  }

  Widget _buildFilterButtons() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildFilterButton('All'),
          _buildFilterButton('Unread'),
          _buildFilterButton('Favourites'),
          _buildFilterButton('Groups'),
        ],
      ),
    );
  }

  Widget _buildFilterButton(String text) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        textStyle: const TextStyle(
          fontSize: 14.0,
        ),
      ),
      child: Text(text),
    );
  }

  Widget _buildChatList(BuildContext context) {
    List<String> names = [
      'Sheraz',
      'Faheel',
      'Saqib',
      'Fahad',
      'Sial',
      'Ammad',
      'Waleed',
      'Nabeel',
      'Muzzamil',
      'Qari',
      'Hamza',
      'Hamza',
      'Hamza',
      'Hamza',
      'Hamza',
      'Hamza',
      'Hamza',
      'Hamza',
      'Hamza',
      'Hamza',
      'Hamza',
      'Hamza',
      'Hamza',
      'Hamza',
      'Hamza'
    ];

    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (context, index) {
        return _buildChatItem(context, names[index]);
      },
    );
  }

  Widget _buildChatItem(BuildContext context, String name) {
    return Container(
      width: double.infinity,
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

  Widget _buildFloatingActionButtons() {
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          right: 0,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: const Icon(Icons.add_comment_rounded, color: Colors.white),
          ),
        ),
        Positioned(
          bottom: 70,
          right: 0,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child: const Icon(Icons.circle_outlined, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
