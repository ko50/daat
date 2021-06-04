import 'package:nyxx/nyxx.dart';

import 'package:vcnotify/command/action/action.dart';

class Ping implements CommandAction {
  final String name = "ping";

  @override
  Future<void> action(TextChannel c, _, __) async {
    await c.send(content: "pong");
  }
}
