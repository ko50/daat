import 'package:nyxx/nyxx.dart';
import 'package:vcnotify/command/action/actions.dart';

abstract class CommandAction {
  final CommandActionId actionId = CommandActionId.base;

  Future<void> action(TextChannel c, IMessageAuthor author, List<String> orders);
}
