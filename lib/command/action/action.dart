import 'package:nyxx/nyxx.dart';

abstract class CommandAction {
  final String name = "";

  Future<void> action(TextChannel c, User author, List<String> orders);
}
