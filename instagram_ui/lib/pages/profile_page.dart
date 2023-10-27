import "package:flutter/material.dart";

import "../Tabs/feed_view.dart";
import "../Tabs/reels_view.dart";
import "../Tabs/tagged_view.dart";

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  List<Widget> tabs = const [
    Tab(
      icon: Icon(
        Icons.home,
        color: Colors.grey,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.video_collection_outlined,
        color: Colors.grey,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
    ),
  ];

  final List<Widget> _pages = const [FeedView(), ReelsView(), TaggedView()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "369",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text("Following")
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[600]),
                  ),
                ),
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("69K",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        Text("Followers")
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Shaikh Asif",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(" | "),
                Text("Developer", style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "UI Designer ",
                  style: TextStyle(color: Colors.grey),
                ),
                Text("- Programmer -", style: TextStyle(color: Colors.grey)),
                Text(" Proffesor", style: TextStyle(color: Colors.grey))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "youtube.com/noChannel",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Edit Profile"),
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Contact",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TabBar(tabs: tabs),
            SizedBox(height: 1000, child: TabBarView(children: _pages))
          ],
        )),
      ),
    );
  }
}
