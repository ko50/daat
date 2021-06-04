import 'package:nyxx/nyxx.dart';

class VCListener {
  void listen(VoiceStateUpdateEvent event) {
    final VoiceState state = event.state;
    final Map<String, dynamic> json = event.raw;

    print(json);

    // stateの値に対応したembedを送信
  }
}
