import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architectural_approach_example/product/widget/button/normal_button.dart';

/// [CustomLoginButton] sınıfı, bir [ElevatedButton] widget'ını temsil eder.
///
/// Bu sınıf, bir düğme oluşturmak için kullanılır ve
/// tıklandığında bir işlem gerçekleştirir.
class CustomLoginButton extends StatefulWidget {
  /// [CustomLoginButton] sınıfının oluşturucusudur.
  ///
  /// [super.key] parametresi, widget'ın anahtarını belirtir.
  const CustomLoginButton({
    required this.onPressed,
    super.key,
  });

  /// Düğmeye tıklandığında çağrılacak işlev
  final AsyncValueGetter<bool> onPressed;

  @override
  State<CustomLoginButton> createState() => _CustomLoginButtonState();
}

class _CustomLoginButtonState extends State<CustomLoginButton> {
  final ValueNotifier<bool> _isLoading = ValueNotifier<bool>(false);
  @override
  void initState() {
    super.initState();
    _isLoading.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isLoading,
      builder: (context, value, child) {
        if (!value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return NormalButton(
          onPressed: () async {
            final navigator = Navigator.of(context);
            _isLoading.value = true;
            final result = await widget.onPressed.call();
            _isLoading.value = false;
            if (result && mounted) {
              navigator.pop();
            }
          },
          text: 'Login',
        );
      },
    );
  }
}
