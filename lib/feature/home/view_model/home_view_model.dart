import 'package:flutter_architectural_approach_example/feature/home/view_model/state/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [HomeViewModel] sınıfı, [HomeState] sınıfını kullanır.
/// cubit bloc'un daha basit versiyonudur. bloc ta event ve state var.
/// cubit ta state var.
final class HomeViewModel extends Cubit<HomeState> {
  /// [HomeViewModel] sınıfının oluşturucusudur.
  ///
  /// [super.key] parametresi, widget'ın anahtarını belirtir.
  HomeViewModel() : super(const HomeState());

  /// isLoading değişkeni, sayfa yüklenirken true, yüklenince false olur.
  void changeLoading() {
    emit(state.copyWith(isLoading: true));
  }
}
