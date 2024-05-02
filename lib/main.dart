import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/app_router.dart';
import 'package:go_router_example/dashboard.dart';
import 'package:go_router_example/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      // routerDelegate: AppRouter().router.routerDelegate,
      // routeInformationProvider: AppRouter().router.routeInformationProvider,
      // routeInformationParser: AppRouter().router.routeInformationParser,
      // restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      title: 'Go Router',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: appRouter.goRouter,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

  // final GoRouter _router = GoRouter(
  //   initialLocation: '/',
  //   restorationScopeId: 'router',
  //   routes: [
  //     GoRoute(
  //         name: 'dashboard',
  //         path: '/',
  //         builder: (context, state) => const Dashboard(),
  //         routes: [
  //           GoRoute(
  //             name: 'profile',
  //             path: "profile/:name",
  //             builder: (context, state) =>
  //                 Profile(name: state.pathParameters['name']!),
  //           )
  //         ]),
  //   ],
  // );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
