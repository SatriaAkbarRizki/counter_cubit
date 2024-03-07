import 'package:counter_cubit/screen/screen_bloc/home_bloc.dart';
import 'package:counter_cubit/screen/screen_cubit/home_cubit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter dengan Cubit dan Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, HomeCubit.routeName),
                child: const Text('Counter dengan Cubit')),
            ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, HomeBloc.routeName),
                child: const Text('Counter dengan Bloc'))
          ],
        ),
      ),
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