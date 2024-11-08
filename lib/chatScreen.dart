import 'package:chat_app/widget/Fav_contacts.dart';
import 'package:chat_app/widget/chatList.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        backgroundColor: Colors.indigo,
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Row(
          children: [
            Text(
              'Chats',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: const Column(
        children: [
          favoriteContacts(),
          SizedBox(
            height: 15,
          ),
          chatList()
        ],
      ),
    );
  }
}
