import 'package:flutter/material.dart';
import 'package:woliba/repo/ColorLibrary.dart';

import '../../widgets/CustomAppBar.dart';
import '../NavScreens/ExploreScreen.dart';
import '../NavScreens/MessagingScreen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.username});

  final String username;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: widget.username,
        onBack: () {
          Navigator.pop(context);
        },
        onMore: () {
          // Handle more button pressed
        },
      ),
        body: Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: ColorLibrary.foreColorLight,
              unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              indicatorColor: ColorLibrary.primaryColor,
              labelColor: ColorLibrary.primaryColor,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              controller: _tabController,
              tabs: const [
                Tab(text: 'Chat',),
                Tab(text: 'Profile'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  MessagingScreen(),
                  ExploreScreen(),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
