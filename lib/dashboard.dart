import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // GoRouter.of(context).go('/profile');
            // context.go(context
            //     .namedLocation('profile', pathParameters: {'name': 'Sadid'}));
            // context.go('/profile');
            context.goNamed(
              'profile',
              pathParameters: {'name': 'Sadid'},
            );
          },
          child: const Text('Profile'),
        ),
      ),
    );
  }
}
