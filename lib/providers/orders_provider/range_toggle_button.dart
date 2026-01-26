import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'range_toggle_button.g.dart';

@riverpod
class RagneToggleState extends _$RagneToggleState {
  @override
  bool build() => false;

  void openRangeButton() {
    state = true;
  }

  void closeRangeButton() {
    state = false;
  }
}
