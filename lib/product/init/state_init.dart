import 'package:flutter/material.dart';
import 'package:flutter_architectural_approach_example/feature/home/view_model/home_view_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [StateInit] sınıfı, [BlocProvider] ve [MultiBlocProvider] kullanılarak
/// birden fazla [Bloc] sağlayıcısını oluşturur.
class StateInit extends StatelessWidget {
  /// [StateInit] sınıfının oluşturucusudur.
  ///
  /// [child] parametresi, sağlayıcıların içinde
  /// barındırılacak olan widget'ı belirtir.
  const StateInit({required this.child, super.key});

  /// [child] parametresi, sağlayıcıların içinde
  /// barındırılacak olan widget'ı belirtir.
  final Widget child;

  /// context ile projenin heryerinden erişmek istediğin blocproviderımız
  /// oluşturup myApp i sarmalıyoruz
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeViewModel()),
      ],
      child: child,
    );
  }
}
