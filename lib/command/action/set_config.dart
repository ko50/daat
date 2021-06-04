import 'package:nyxx/nyxx.dart';

import 'package:vcnotify/command/action/action.dart';
import 'package:vcnotify/command/action/actions.dart';
import 'package:vcnotify/configs.dart';

class SetConfig implements CommandAction {
  final CommandActionId actionId = CommandActionId.setConfig;

  @override
  Future<void> action(TextChannel c, _, __) async {
    final ConfigItem item = ConfigItem.mainMessageChnnel;
  
    await c.sendMessage(MessageBuilder.content("${item.name}を設定しました"));
  }
}
