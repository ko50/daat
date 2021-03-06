import 'package:nyxx/nyxx.dart';

import 'package:vcnotify/command/action/action.dart';
import 'package:vcnotify/command/action/ping.dart';
import 'package:vcnotify/command/action/set_config.dart';

class CommandInvoker {
  static const String PREFIX = "?";

  Future<void> invoke(Message message) async {
    final TextChannel? channel = message.channel.getFromCache();
    final List<String> contents = message.content.split(' ');
    final String prefix = contents[0][0];
    final String commandName = contents[0].substring(1);
    final List<String> orders = contents.length >= 2 ? contents.sublist(1) : [];

    if (channel == null) return;
    if (prefix != PREFIX) return;

    final CommandAction action = _selectCommandAction(commandName);

    await action.action(channel, message.author, orders);
    log(message);
  }

  CommandAction _selectCommandAction(String name) {
    switch (name) {
      case "ping":
        return Ping();
      case "set":
        return SetConfig();
      default:
        throw Exception("Could not find any commands that has specified name");
    }
  }

  void log(Message message) {
    print(
        "${message.author.username} \t\t\t on: ${DateTime.now().toIso8601String()}");
    print("\t\t\t in: ${message.channel.id}");
    print("${message.content}");
    print(
        "----------------------------------------------------------------------------------");
  }
}
