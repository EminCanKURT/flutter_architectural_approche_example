import 'package:flutter/material.dart';

/// [TextButton] için bir kapsayıcı sınıf.
///
/// Bu sınıf, [TextButton] ile ilgili özellikleri kapsülleyerek,
/// daha fazla işlevsellik sunar.
final class CustomTextButton extends TextButton {
  /// [CustomTextButton] sınıfının oluşturucusudur.
  ///
  /// [onPressed] parametresi, butonun tıklandığında çağrılacak bir
  /// işlevi belirtir.
  /// [child] parametresi, butonun görünümünü tanımlayan bir widget'ı belirtir.
  /// [key] parametresi, butonun benzersiz bir kimliğini belirtir.
  CustomTextButton({
    required super.onPressed,
    required super.child,
    super.key,
  }) : super(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
          ),
        );
}
