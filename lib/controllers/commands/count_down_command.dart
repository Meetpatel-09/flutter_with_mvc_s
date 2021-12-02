import 'package:flutter_with_mvcs/controllers/commands/abstract_command.dart';
import 'package:flutter_with_mvcs/models/data/counter.dart';

class CountDownCommand extends AbstractCommand {
  Future<void> execute(Counter item) async {
    item.counter.value--;
    // controller.update();
  }
}