import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/counterController.dart';

class OtherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController _counterController = Get.find();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Screen was clickled ${_counterController.counter.value} times."),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Go back  the home screen."),
            ),
          ],
        ),
      ),
    );
  }
}
