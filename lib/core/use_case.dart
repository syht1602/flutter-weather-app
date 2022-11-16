import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  Future<Type> invoke(Params params);
}

class NoParams extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
