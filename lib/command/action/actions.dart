enum CommandActionId { base, ping, setConfig }

extension ActionInfo on CommandActionId {
  String get name {
    switch (this) {
      case CommandActionId.base:
        return "";
      case CommandActionId.ping:
        return "ping";
      case CommandActionId.setConfig:
        return "set";
    }
  }
}
