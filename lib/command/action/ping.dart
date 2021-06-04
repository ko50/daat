import 'package:nyxx/nyxx.dart';

import 'package:vcnotify/command/action/action.dart';
import 'package:vcnotify/command/action/actions.dart';

class Ping implements CommandAction {
  final CommandActionId actionId = CommandActionId.ping;

  @override
  Future<void> action(TextChannel c, _, __) async {
    await c.sendMessage(MessageBuilder.content("pong"));
  }
}
