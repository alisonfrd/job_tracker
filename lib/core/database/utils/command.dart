import 'package:flutter/foundation.dart';

@immutable
class CommandState {
  final bool isRunning;
  final Object? error;

  const CommandState._({required this.isRunning, required this.error});

  const CommandState.idle() : this._(isRunning: false, error: null);
  const CommandState.running() : this._(isRunning: true, error: null);
  const CommandState.failure(Object e) : this._(isRunning: false, error: e);

  bool get hasError => error != null;
}

class Command {
  CommandState _state = const CommandState.idle();
  CommandState get state => _state;

  final ValueNotifier<CommandState> notifier = ValueNotifier(
    const CommandState.idle(),
  );

  Future<void> run(Future<void> Function() action) async {
    _set(const CommandState.running());

    try {
      await action();
      _set(const CommandState.idle());
    } catch (e) {
      _set(CommandState.failure(e));
      rethrow;
    }
  }

  void _set(CommandState s) {
    _state = s;
    notifier.value = s;
  }

  void dispose() => notifier.dispose();
}
