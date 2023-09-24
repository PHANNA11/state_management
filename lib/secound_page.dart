import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'counter_controller.dart';

class SecoundPage extends StatelessWidget {
  SecoundPage({super.key});
  CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(builder: (contexts) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
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
          ],
        ),
      );
    });
  }
}
