import 'package:flutter/material.dart';

class ResultsWithFriends extends StatefulWidget {
  const ResultsWithFriends({super.key});

  @override
  State<ResultsWithFriends> createState() => _ResultsWithFriendsState();
}

class _ResultsWithFriendsState extends State<ResultsWithFriends> {
  var users = [
    {
      "name": "You",
      "image": "assets/images/profile_pic.png",
      "rank": "8th",
      "points": "4 pt"
    },
    {
      "name": "name",
      "image": 'assets/images/p1.png',
      "rank": "1st",
      "points": "12 pt"
    },
    {
      "name": "name",
      "image": 'assets/images/p1.png',
      "rank": "2nd",
      "points": "12 pt"
    },
    {
      "name": "name",
      "image": "assets/images/p2.png",
      "rank": "3rd",
      "points": "10 pt"
    },
    {
      "name": "name",
      "image": "assets/images/p1.png",
      "rank": "4th",
      "points": "9 pt"
    },
    {
      "name": "name",
      "image": "assets/images/p3.png",
      "rank": "5th",
      "points": "9 pt"
    },
    {
      "name": "name",
      "image": "assets/images/p3.png",
      "rank": "6th",
      "points": "7 pt"
    },
    {
      "name": "name",
      "image": "assets/images/p4.png",
      "rank": "7th",
      "points": "6 pt"
    },
    {
      "name": "name",
      "image": "assets/images/p2.png",
      "rank": "9th",
      "points": "2 pt"
    }
  ];

  void onTap(item) {
    print(item);
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Result",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Loto'),
          )),
          leading: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color.fromRGBO(253, 138, 0, 1),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: const Image(
                    image: AssetImage('assets/images/profile_pic.png')),
              ),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Card(
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24.0, horizontal: 16.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 20),
                          child: Text(users[index]["rank"]!),
                        ),
                        Image(
                            height: 46,
                            width: 46,
                            fit: BoxFit.cover,
                            image: AssetImage(users[index]["image"]!)),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 90),
                          child: Text(users[index]["name"]!),
                        ),
                        Text(
                          users[index]["points"]!,
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(255, 140, 0, 1)),
                        ),
                      ],
                    )),
              ),
              onTap: () => onTap(users[index]),
            );
          },
        ),
      ),
    );
  }
}
