import 'package:bloc_cubit/Bloc/blocprovider.dart';
import 'package:bloc_cubit/Bloc/scrn%201.dart';
import 'package:bloc_cubit/cubit/cubitprovider.dart';
import 'package:bloc_cubit/cubit/scrn%202.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>counterbloc()),
        BlocProvider(create: (context)=>Countercubit())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: Scrn_1(),

        routes: {
          "/screen2": (context)=> Scrn_2()
        },
      ),
    );

    
  }
}

