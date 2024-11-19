import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent{} //initializing

class incrementEvent extends CounterEvent{} //func 1
class decrementEvent extends CounterEvent{} //func 2

class counterbloc extends Bloc<CounterEvent,int>{ //main class
counterbloc():super(0){//start from 0

  on<incrementEvent>((event, emit) {  //for func 1
    emit(state+1);
  },);

  on<decrementEvent>((event, emit) {  //for func 2
    emit(state-1);
  },);
}
}