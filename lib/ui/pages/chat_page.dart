import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/widgets/custom_card.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.message)),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                height: 0,
                thickness: 1,
              ),
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return const CustomCard();
          },
        ));
  }
}
