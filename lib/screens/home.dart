import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/counterController.dart';
import 'package:getx_example/screens/other.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Screen was clickled ${counterController.counter.value} times."),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Get.to(OtherScreen());
                  },
                  child: Text("Go to the other screen."),
                ),
              ],
            ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
