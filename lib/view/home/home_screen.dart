import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:gemini_app/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gemini'),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return DashChat(
              currentUser: sender,
              onSend: (message) {
                controller.sendMessage(message);
              },
              messages: controller.messages);
        },
      ),
    );
  }
}

ChatUser sender = ChatUser(id: '1', firstName: 'Drashti', lastName: 'Patel');
ChatUser receiver = ChatUser(id: '2', firstName: 'Meshwa', lastName: 'Patel',profileImage: 'https://www.robertlowdon.com/wp-content/uploads/2022/06/toronto-headshot.webp');
