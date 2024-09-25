import 'package:chat/constants.dart';
import 'package:chat/views/login_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            kLogo,
          ),
          const Text(
            'Chat App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Pacifico',
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginView();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
            ),
            child: const Text(
              'Let\'s Started',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                //fontFamily: 'Pacifico',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
