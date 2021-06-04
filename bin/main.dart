import 'dart:io';

import 'package:vcnotify/bot.dart';

void main() {
  final String token = Platform.environment['VCNOTIFY_TOKEN'] ?? "";
  final VCNotify client = VCNotify(token);

  client.onset();
}
