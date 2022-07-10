import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_counter_demo_app/core/error/failure.dart';

abstract class UseCase<Type,Params>{
  Future<Type> invoke(Params params);
}

class NoParams extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
