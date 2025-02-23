import 'package:flutter/material.dart';
import 'package:flutter_architectural_approach_example/product/utility/constant/project_radius.dart';

/// [NormalButton] sınıfı, bir [InkWell] widget'ını temsil eder.
///
/// Bu sınıf, bir düğme oluşturmak için kullanılır ve
/// tıklandığında bir işlem gerçekleştirir.
final class NormalButton extends StatelessWidget {
  /// [NormalButton] sınıfının oluşturucusudur.
  ///
  /// [super.key] parametresi, widget'ın anahtarını belirtir.
  const NormalButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  /// Düğmenin metni
  final String text;

  /// Düğmenin tıklandığında çağrılacak işlev
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(ProjectRadius.circular.radius),
      child: Text(text),
    );
  }
}
