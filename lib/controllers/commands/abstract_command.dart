import 'package:flutter_with_mvcs/controllers/counter_controller.dart';
import 'package:get/get.dart';

abstract class AbstractCommand {
  CounterController get controller => Get.find();
}