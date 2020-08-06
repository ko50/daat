import 'package:nyxx/nyxx.dart';

class CommandBase {
  String prefix;
  List<String> subCommands;

  CommandBase(this.prefix, this.subCommands);

  void action(TextChannel chan, String authorID, List<String> orders) {}
}
