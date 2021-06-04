// 設定コマンドを作って、それが呼び出されたとき、サーバーidとチャンネルidをmapに保存する
enum ConfigItem { mainMessageChnnel }

extension ConfigValues on ConfigItem {
  Map<String, String> get values {
    switch (this) {
      case ConfigItem.mainMessageChnnel:
        return _messageChannels;
    }
  }

  String get name {
    switch (this) {
      case ConfigItem.mainMessageChnnel:
        return "mainTextChannel";
    }
  }
}

final Map<String, String> _messageChannels = {};
