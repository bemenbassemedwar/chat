import 'package:flutter/material.dart';

import '../chat__model.dart';

class chatList extends StatelessWidget {
  const chatList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 20, 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(chats[index].image),
              ),
              title: Text(chats[index].name),
              subtitle: Text(
                chats[index].message,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
              trailing: Text(chats[index].time),
            ),
          );
        },
      ),
    ));
  }
}
