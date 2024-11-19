import 'package:bloc_cubit/Bloc/blocprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Scrn_1 extends StatelessWidget {
  const Scrn_1({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = BlocProvider.of<counterbloc>(context); //

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Bloc",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.purple[200],
        elevation: 20,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          BlocBuilder<counterbloc, int>(builder: (context, count) {
            return Center(
              child: Text(
                "using Bloc -> $count",
                style: const TextStyle(fontSize: 30),
              ),
            );
          }),
          const SizedBox(
            height: 400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  counter.add(incrementEvent());
                },
                heroTag: "increment_bloc",
                child: const Icon(Icons.arrow_upward_outlined),
              ),
              const SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                onPressed: () {
                  counter.add(decrementEvent());
                },
                heroTag: "decrement_bloc",
                child: const Icon(Icons.arrow_downward_outlined),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/screen2");
                  },
                  heroTag: "navigate_to_cubit",
                  child: const Icon(Icons.arrow_forward_ios_sharp),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
