import 'package:flutter/material.dart';
import 'package:learn_ease/packages/userInfo.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});
  static const routeName = '/User Profile';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as userInfo;
    print('first name ${args.fName}');
    print('last name ${args.lName}');
    print('email ${args.email}');

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My profile',
          style: TextStyle(color: (Colors.white)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15, left: 25),
        child: Column(
          children: [
            Text(
              'First name: ${args.fName!}',
              style: const TextStyle(fontSize: 30),
            ),
            Text(
              'Last name: ${args.lName!}',
              style: const TextStyle(fontSize: 30),
            ),
            Text(
              'Email: ${args.email!}',
              style: const TextStyle(fontSize: 25),
            ),
            
          ],
        ),
      ),
    );
  }
}
