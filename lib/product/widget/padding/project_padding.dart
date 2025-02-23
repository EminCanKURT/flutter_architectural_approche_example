import 'package:flutter/widgets.dart';

/// [EdgeInsets] için bir kapsayıcı sınıf.
///
/// Bu sınıf, [EdgeInsets] ile ilgili özellikleri kapsülleyerek,
/// daha fazla işlevsellik sunar.
final class ProjectPadding extends EdgeInsets {
  /// ALL Small
  const ProjectPadding.allSmall() : super.all(10);

  /// NORMAL
  const ProjectPadding.allNormal() : super.all(20);

  /// LARGE
  const ProjectPadding.allLarge() : super.all(30);

  /// Symetr
  const ProjectPadding.symmetricNormal() : super.symmetric(horizontal: 20);

  /// Only Top
  const ProjectPadding.onlyTop() : super.only(top: 20);

  /// Only Bottom
  const ProjectPadding.onlyBottom() : super.only(bottom: 20);

  /// Only Left
  const ProjectPadding.onlyLeft() : super.only(left: 20);

  /// Only Right
  const ProjectPadding.onlyRight() : super.only(right: 20);

  /// Only Top Left
  const ProjectPadding.onlyTopLeft() : super.only(top: 20, left: 20);

  /// Only Top Right
  const ProjectPadding.onlyTopRight() : super.only(top: 20, right: 20);
}
