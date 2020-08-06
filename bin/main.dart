import 'dart:io';

import 'package:nyxx/Vm.dart';

import 'package:daat/daat.dart';

void main() {
  configureNyxxForVM();
  final token = Platform.environment['DAAT_TOKEN'];
  final client = Daat(token);

  client.onReady;
  client.onMessageReceived
      .listen((event) => CommandUtil.executeMessageCommand(event));
}
