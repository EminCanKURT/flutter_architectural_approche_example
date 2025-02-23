/// [ProjectRadius] enum'ı, farklı yarıçap değerlerini temsil
/// eden sabit değerleri içerir.
///
/// Bu enum, farklı yarıçap değerlerini kullanmak için kullanılır.
/// Örneğin:
/// ```dart
/// ProjectRadius.small.radius // 10
/// ProjectRadius.normal.radius // 20
enum ProjectRadius {
  /// Küçük yarıçap değeri
  small(radius: 10),

  /// Normal yarıçap değeri
  normal(radius: 20),

  /// Büyük yarıçap değeri
  large(radius: 30),

  /// Dairesel yarıçap değeri
  circular(radius: 100);

  /// [ProjectRadius] enum'ının oluşturucusudur.
  ///
  /// [radius] parametresi zorunludur ve yarıçap değerini belirtir.
  const ProjectRadius({required this.radius});

  /// Yarıçap değeri
  final double radius;
}
