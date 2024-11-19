import 'package:bloc_cubit/cubit/cubitprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Scrn_2 extends StatelessWidget {
  const Scrn_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Cubit",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.blue[200],
        elevation: 20,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          BlocBuilder<Countercubit, int>(builder: (context, count) {
            return Center(
              child: Text(
                count.toString(),
                style: TextStyle(fontSize: 30),
              ),
            );
          }),
          SizedBox(
            height: 400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                  onPressed: () {
                    context.read<Countercubit>().increment();
                  },
                  child: Icon(Icons.add),
                  heroTag: "increment_cubit",
                  backgroundColor: Colors.blue[200]),
              SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<Countercubit>().decrement();
                },
                child: Icon(Icons.remove),
                heroTag: "decrement_cubit",
                backgroundColor: Colors.blue[200],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
