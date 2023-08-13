import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';





class ConnectedBloc extends Bloc<ConnectedEvent, ConnectedState> {
  StreamSubscription? subscription;
  ConnectedBloc() : super(ConnectedInitialState()) {
    on<ConnectedEvent>((event, emit) => emit(ConnectedSucessState()));
    on<OnNotConnectedEvent>((event, emit) => emit(ConnectedFailureState()));

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(OnConnectedEvent());
      } else {
        add(OnNotConnectedEvent());
      }
    });
  }
  @override
  Future<void> close() {
    subscription?.cancel();
    return super.close();
  }
}

class ConnectedState {}
class ConnectedInitial extends ConnectedState {}

class ConnectedInitialState extends ConnectedState {}

class ConnectedSucessState extends ConnectedState {}

class ConnectedFailureState extends ConnectedState {}

class ConnectedEvent {}

class OnConnectedEvent extends ConnectedEvent {}

class OnNotConnectedEvent extends ConnectedEvent {}
