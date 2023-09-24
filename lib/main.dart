import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test_statemanagement/counter_controller.dart';
import 'package:test_statemanagement/secound_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(builder: (contexts) {
      return Scaffold(
        appBar: AppBar(
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
                controller.number.value.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                controller.decrement();
              },
              tooltip: 'Decrement',
              heroTag: 'de',
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                controller.increment();
              },
              tooltip: 'Increment',
              heroTag: 'in',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                Get.to(() => SecoundPage());
              },
              tooltip: 'next',
              heroTag: 'next',
              child: const Icon(Icons.forward),
            ),
          ],
        ),
      );
    });
  }
}
