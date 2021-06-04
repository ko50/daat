import 'package:nyxx/nyxx.dart';

import 'package:vcnotify/command/invoker.dart';

class VCNotify extends Nyxx {
  final CommandInvoker _commandInvoker = CommandInvoker();

  VCNotify(String token) : super(token, GatewayIntents.none);

  void onset() async {
    print("Starting...");

    onReady.listen((event) => print(
          "Bot now on ready! \t\t ${DateTime.now().toIso8601String()}\n"
          "==================================================================================",
        ));

    onMessageReceived.listen((event) => _commandInvoker.invoke(event.message));
  }
}
