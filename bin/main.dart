import 'dart:io';

import 'package:nyxx/Vm.dart';

import 'package:vcnotify/bot.dart';

void main() {
  configureNyxxForVM();

  final String token = Platform.environment['VCNOTIFY_TOKEN'];
  final VCNotify client = VCNotify(token);

  client.onset();
}
