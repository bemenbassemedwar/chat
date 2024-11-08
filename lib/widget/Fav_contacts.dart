import 'package:flutter/material.dart';

import '../chat__model.dart';

class favoriteContacts extends StatelessWidget {
  const favoriteContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Favorite contact',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 70,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(chats[index].image),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: Colors.indigo,
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          Text(
                            chats[index].name.split(' ').first,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
              itemCount: 20,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 10,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
