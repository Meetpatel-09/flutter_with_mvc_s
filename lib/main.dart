import 'package:flutter/material.dart';
import 'package:flutter_with_mvcs/controllers/counter_controller.dart';
import 'package:flutter_with_mvcs/ui/views/counting_coulmn.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get Flutter'),
        ),
        body: GetBuilder<CounterController>(
          init: CounterController(),
          // initState: (_) {},
          builder: (controller) {
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...controller.model.counterList.map(
                          (e) => CountingColumn(item: e,))
                ],
              )
            );
          }
        ),
      )
    );
  }
}
