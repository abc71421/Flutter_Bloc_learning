import 'package:bloc/bloc.dart';
import 'Utils/static_objects.dart';


///{@template counter_observer}
/// A [BlocObserver] which will observe all
/// state changes in the application.
/// [BlocObserver] 將觀察應用程序中的所有狀態變化。
///{@endtemplate}


class CounterObserver extends BlocObserver{

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    simpleLogger.v('${bloc.runtimeType} $change');
  }
}