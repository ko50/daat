import 'package:nyxx/nyxx.dart';

import './command_base.dart';

class TestCommand extends CommandBase {
  TestCommand(String prefix, List<String> subCommands)
      : super(prefix, subCommands);

  @override
  void action(TextChannel chan, String authorID, List<String> orders) {
    super.action(chan, authorID, orders);
  }
}
// 設計を見直そう
