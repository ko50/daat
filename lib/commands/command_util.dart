import 'package:nyxx/nyxx.dart';

import './command_base.dart';

class CommandUtil {
  void executeCommand(Message message) {
    final orders = message.content.split(' ');
    final prefix = orders[0];

    
  }
}
