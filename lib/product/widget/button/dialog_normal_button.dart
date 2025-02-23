import 'package:flutter/material.dart';
import 'package:flutter_architectural_approach_example/product/widget/button/normal_button.dart';
import 'package:widgets/widgets.dart';

/// [DialogNormalButton] sınıfı, bir [ElevatedButton] widget'ını temsil eder.
///
/// Bu sınıf, bir düğme oluşturmak için kullanılır ve
/// tıklandığında bir işlem gerçekleştirir.
final class DialogNormalButton extends StatelessWidget {
  /// [DialogNormalButton] sınıfının oluşturucusudur.
  ///
  /// [super.key] parametresi, widget'ın anahtarını belirtir.
  const DialogNormalButton({
    required this.text,
    required this.onCompleted,
    super.key,
  });

  /// Düğmenin metni
  final String text;

  /// Düğmeye tıklandığında çağrılacak işlev
  final ValueChanged<bool> onCompleted;

  @override
  @override
  Widget build(BuildContext context) {
    return NormalButton(
      onPressed: () async {
        final result = await SuccessDialog.show(
          context: context,
          title: text,
        );
        onCompleted.call(result);
      },
      text: text,
    );
  }
}
