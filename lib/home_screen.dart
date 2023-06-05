import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text("Chat"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_horiz_outlined),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Text("New Group"),
                        ),
                        const PopupMenuItem(
                          value: 2,
                          child: Text("Settings"),
                        ),
                        const PopupMenuItem(
                          value: 3,
                          child: Text("Logout"),
                        ),
                      ])
            ],
          ),
          body: TabBarView(
            children: [
              Text("Camera"),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtKEYvI78q9Hn6F5tMj8u6qqFWZ2s_IjgvbQ&usqp=CAU"),
                      ),
                      title: Text("Jhon Click"),
                      subtitle: Text("Where is my dog?"),
                      trailing: Text("6:50 PM"),
                    );
                  }),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("New Update"),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(width: 2.5, color: Colors.teal)),
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtKEYvI78q9Hn6F5tMj8u6qqFWZ2s_IjgvbQ&usqp=CAU"),
                                ),
                              ),
                              title: Text("Jhon Click"),
                              subtitle: Text("30 min ago"),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 2.5, color: Colors.teal)),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtKEYvI78q9Hn6F5tMj8u6qqFWZ2s_IjgvbQ&usqp=CAU"),
                          ),
                        ),
                        title: Text("Jhon Click"),
                        subtitle: Text("30 min ago"),
                      );
                    }
                  }),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtKEYvI78q9Hn6F5tMj8u6qqFWZ2s_IjgvbQ&usqp=CAU"),
                      ),
                      title: Text("Jhon Click"),
                      subtitle: Text(index / 2 == 0
                          ? "You have missed audio call"
                          : "You have missed video call"),
                      trailing:
                          Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                    );
                  }),
            ],
          ),
        ));
  }
}
