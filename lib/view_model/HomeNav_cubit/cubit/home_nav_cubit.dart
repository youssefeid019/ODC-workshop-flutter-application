import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_nav_state.dart';

class HomeNavCubit extends Cubit<HomeNavState> {
  HomeNavCubit() : super(HomeNavInitial());
  static HomeNavCubit get(context) => BlocProvider.of(context);
  int selectedindex = 0;
   void navigate() {
   
    emit(Navigate());
    
  }
}
