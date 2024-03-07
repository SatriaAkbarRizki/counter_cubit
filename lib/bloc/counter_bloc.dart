import 'package:counter_cubit/bloc/event/counter_event.dart';
import 'package:counter_cubit/bloc/state/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitCounterState(0)) {
    on<OnEventIncrement>(
        (event, emit) => emit(CounterIncrement(state.number + 1)));
    on<OnEventDecrement>((event, emit) {
      if (state.number > 0) emit(CounterDecrement(state.number - 1));
    });
  }
}


/****
 Pada kode diatas mungkin kita masih pening karena untuk melakukan perubahan kita harus buat masihng" event dan state
 Disin saya akan menjelaskan secara sederhana
 Kalau di cubit kan, untuk inisialisasi kita tinggal memberikan nya kalau di bloc tidak,
 di bloc kita harus membuat sebuah class CounterState kaku
 untuk melakukan perubahan menggunakan emit, kita harus membuat sebuah CounterEvent
 yang dimana pada function on<Object> => emit, disini kita menambahkan maupun menghapus sebuah nilai

 Mungkin kita masih binggung apa itu Event, State dan Emit,
  Event => Memberitaukan kepada bloc bahwa ada perubahan, misal kita klik tambah pada button, maka si event akan memberitahukan nya
  State => Sebuah kondisi saat ini pada aplikasi yang dimana dia akan mengubah sebuah nilai berdasarkan dari si event
  Emit => Mengirimkan perubahan kondisi yang berasal dari state ke tampilan aplikasi

Jadi alur nya seperti ini
 Event -> State -> Emit ----|
 Emit  <- State <- Event <--|
 ****/