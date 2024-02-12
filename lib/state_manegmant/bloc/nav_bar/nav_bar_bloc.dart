
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'nav_bar_event.dart';
part 'nav_bar_state.dart';

class NavBarBloc extends Bloc<NavBarEvent, NavBarState> {
  NavBarBloc() : super(const NavBarInitial(tabIndex: 0)) {
    on<NavBarEvent>((event, emit) {
      if (event is TabChange) {
        debugPrint(event.tabIndex.toString());
        emit(NavBarInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
