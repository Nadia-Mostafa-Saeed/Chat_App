import 'package:firebase_core/firebase_core.dart';
import 'package:chat/views/chat_view.dart';
import 'package:chat/views/home_view.dart';
import 'package:chat/views/login_view.dart';

import 'package:flutter/material.dart';
import 'package:chat/views/register_view.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginView.id: (context) => const LoginView(),
        RegisterView.id: (context) => const RegisterView(),
        ChatView.id: (context) => ChatView(),
        HomeView.id: (context) => const HomeView(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
      //i love nadia
    );
  }
}
