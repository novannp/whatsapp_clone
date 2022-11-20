import 'package:flutter/material.dart';

import '../pages/chat_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp Bohongan',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton(
              onSelected: (value) {},
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                      value: 'New group', child: Text('New group')),
                  const PopupMenuItem(
                    value: 'New broadcast',
                    child: Text('New broadcast'),
                  ),
                  const PopupMenuItem(
                    value: 'WhatsApp Web',
                    child: Text('WhatsApp Web'),
                  ),
                  const PopupMenuItem(
                      value: 'Starred messages',
                      child: Text('Starred messages')),
                  const PopupMenuItem(
                      value: 'Settings', child: Text('Settings')),
                ];
              }),
        ],
        bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(text: 'STATUS'),
              Tab(
                text: 'CALLS',
              ),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text('Camera'),
          ChatPage(),
          Text('STATUS'),
          Text('Calls'),
        ],
      ),
    );
  }
}
