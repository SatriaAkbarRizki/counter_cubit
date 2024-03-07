import 'package:counter_cubit/bloc/counter_bloc.dart';
import 'package:counter_cubit/cubit/counter_cubit.dart';
import 'package:counter_cubit/screen/home.dart';
import 'package:counter_cubit/screen/screen_bloc/home_bloc.dart';
import 'package:counter_cubit/screen/screen_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CounterCUbit(),
        ),
        BlocProvider(create: (_) => CounterBloc())
      ],
      child: MaterialApp(
        routes: {
          HomeCubit.routeName: (_) => const HomeCubit(),
          HomeBloc.routeName: (_) => const HomeBloc()
        },
        theme: ThemeData(useMaterial3: true),
        home: const HomeScreen(),
      ),
    );
  }
}


/****
  Pada tutorial ini saya belajar tentang cubit seblum belajar mengenai bloc.
  Untuk Mengakses nya cukup mudah hanya taruh saja cubit nya pada BlocProvider
  seperti state management Provider lalu tinggal acces deh cubit nya
 ****/