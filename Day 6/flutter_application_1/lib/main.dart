import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatsPage(),
    );
  }
}

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/ankur.jpg'),
            ),
            SizedBox(width: 10),
            Text('Chats'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    StoryItem(
                      image: 'assets/images/ankur.jpg',
                      label: 'Add Story',
                      isAddButton: true,
                    ),
                    StoryItem(
                      image: 'assets/images/stella.jpg',
                      label: 'Stella',
                    ),
                    StoryItem(
                      image: 'assets/images/rosy.jpg',
                      label: 'Rosy',
                    ),
                    StoryItem(
                      image: 'assets/images/ani.jpg',
                      label: 'Ani',
                    ),
                    StoryItem(
                      image: 'assets/images/ankur.jpg',
                      label: 'Ankur',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ChatItem(
                    image: 'assets/images/ankur.jpg',
                    name: 'Ankur',
                    lastMessage: 'Lets meet tomorrow . 3:09 PM',
                    time: '3:09 PM',
                  ),
                  ChatItem(
                    image: 'assets/images/stella.jpg',
                    name: 'Stella',
                    lastMessage: 'Hey What\'s up? . Wed',
                    time: 'Wed',
                  ),
                  ChatItem(
                    image: 'assets/images/rosy.jpg',
                    name: 'Rosy',
                    lastMessage: 'Are you ready for the party... Thu',
                    time: 'Thu',
                  ),
                  ChatItem(
                    image: 'assets/images/ani.jpg',
                    name: 'Ani',
                    lastMessage: 'Let\'s go have some fun .',
                    time: 'Fri',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  final String image;
  final String label;
  final bool isAddButton;

  const StoryItem({
    required this.image,
    required this.label,
    this.isAddButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
            child: isAddButton
                ? Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  )
                : null,
          ),
          SizedBox(height: 5),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String image;
  final String name;
  final String lastMessage;
  final String time;

  const ChatItem({
    required this.image,
    required this.name,
    required this.lastMessage,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(image),
      ),
      title: Text(name),
      subtitle: Row(
        children: [
          Expanded(child: Text(lastMessage)),
        ],
      ),
      trailing: Text(time),
    );
  }
}
