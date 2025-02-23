import 'package:equatable/equatable.dart';

/// [HomeState] sınıfı, HomeView widget'ı için durum sınıfıdır.
final class HomeState extends Equatable {
  /// [HomeState] sınıfının oluşturucusudur.
  ///
  /// [super.key] parametresi, widget'ın anahtarını belirtir.
  const HomeState({
    this.isLoading = false,
  });

  /// [isLoading] değişkeni, sayfa yüklenirken true, yüklenince false olur.
  final bool isLoading;

  /// [HomeState] sınıfının özelliklerini döndürür.
  ///  iki nesne eşit mi diye kontrol edilirken Equatable bu sınıf sayesinde
  /// props içindeki özelliklere bakarak eşitlik kontrolü yapar.
  @override
  List<Object?> get props => [isLoading];

  /// [HomeState] sınıfının kopyasını döndürür.
  HomeState copyWith({
    bool? isLoading,
  }) {
    return HomeState(isLoading: isLoading ?? this.isLoading);
  }
}
