import 'package:flutter/material.dart';
import 'package:flutter_with_mvcs/controllers/commands/commands.dart';
import 'package:flutter_with_mvcs/models/data/counter.dart';
import 'package:get/get.dart';

class CountingColumn extends StatelessWidget {
  final Counter item;

  const CountingColumn({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Obx(() => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => CountUpCommand().execute(item)),
        Text(
          item.counter.toString(),
          style: const TextStyle(fontSize: 40),),
        FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => CountDownCommand().execute(item)),
      ],
    ),
    );
  }
}