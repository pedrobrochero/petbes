import 'package:bloc/bloc.dart';

import 'utils.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    myLog('BLOC: ${bloc.runtimeType} E: $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    myLog('BLOC: ${bloc.runtimeType} T: ${transition.currentState} => ${transition.nextState}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    myLog('BLOC: ${bloc.runtimeType} Ex: $error stackTrace: $stackTrace');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    myLog('BLOC: ${bloc.runtimeType}, $change');
  }
}