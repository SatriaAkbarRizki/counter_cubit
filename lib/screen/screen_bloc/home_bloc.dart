import 'package:counter_cubit/bloc/counter_bloc.dart';
import 'package:counter_cubit/bloc/event/counter_event.dart';
import 'package:counter_cubit/bloc/state/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends StatelessWidget {
  static String routeName = '/homebloc';
  const HomeBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter dengan Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Value Counter:'),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, value) => Text('${value.number}'),
            )
          ],
        ),
      ),
      floatingActionButton: ButtonBar(children: [
        FloatingActionButton(
          heroTag: null,
          onPressed: () => context.read<CounterBloc>().add(OnEventDecrement()),
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          heroTag: null,
          onPressed: () => context.read<CounterBloc>().add(OnEventIncrement()),
          child: const Icon(Icons.add),
        )
      ]),
    );
  }
}



/****
  Seperti yang diliat hampir mirip dengan provider, untuk melakukan perubah pada widget tertentu
  tinggal pakai BlocProvider layaknya Consumer milik State Providers.
  Lalu untuk melakukan state (alis perubahan value) bisa dilakaukan dengan 2 cara:
  1, dengan BlocProvider.of<CounterCUbit>(context, listen: false).increment();
  2, dengan context.read() dan context.watch()
      ->  Perbedaan antara read dan watch adalah read tidak mendengarkan state secara realtime sedangkan watch secara realtitme
          Lebih mudah pahami seperi BlocProvider diberi lister true maupun false
 ****/