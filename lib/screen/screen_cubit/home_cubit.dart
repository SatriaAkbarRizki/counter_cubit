import 'package:counter_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends StatelessWidget {
  static String routeName = '/homecubit';
  const HomeCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter dengan Cubit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Value Counter:'),
            BlocBuilder<CounterCUbit, int>(
              builder: (context, value) => Text('$value'),
            )
          ],
        ),
      ),
      floatingActionButton: ButtonBar(children: [
        FloatingActionButton(
          heroTag: null,
          onPressed: () => context.read<CounterCUbit>().decrement(),
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          heroTag: null,
          onPressed: () => context.read<CounterCUbit>().increment(),
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