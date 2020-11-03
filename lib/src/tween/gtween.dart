library gtween;

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:graphx/graphx.dart';

part 'src/mixins/tweenable.dart';

part 'src/core/prop_tween.dart';

part 'src/core/tween_callback.dart';

part 'src/easing/ease.dart';
part 'src/wraps/display_object.dart';
part 'src/extensions/display_object.dart';

part 'src/gtween.dart';
part 'src/wraps/common_wraps.dart';
part 'src/extensions/common_types.dart';

Stopwatch _stopwatch;

void _initTweenTimer() {
  if (_stopwatch != null) return;
  _stopwatch = Stopwatch();
  _stopwatch.start();
}

int getTimer() {
  if (_stopwatch == null) {
    _initTweenTimer();
  }
  return _stopwatch.elapsedMilliseconds;
}