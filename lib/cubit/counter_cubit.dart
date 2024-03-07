import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCUbit extends Cubit<int> {
  CounterCUbit() : super(0);

  increment() => emit(state + 1);

  decrement() {
    if (state > 0) {
      emit(state - 1);
    }
  }

  @override
  void onChange(Change<int> change) {
    print('status: $change');
    super.onChange(change);
  }
}

/****
  Untuk melakukan State ada dua yaitu dengan cubit maupun Bloc
  Perbedaan simpel nya cubit hanya untuk app skala kecil sedangkan bloc skala besar
  Melakukan perubahan di cubit kita bisa memakai yang namanya emit,
  yang dimana dia akan melakukan perubahan layaknya notifylistener milik states Providers
  Dan kita bisa juga untuk mengamati perubahan pada state yang kita buat,
  yaitu dengan onChange
 ****/