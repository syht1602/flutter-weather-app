import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final List properties = const <dynamic>[];
  Failure(properties) : super();
  @override
  // TODO: implement props
  List<Object?> get props => [properties];
}

class ServerFailure implements Failure{
  @override
  final List properties;
  ServerFailure(this.properties);

  @override
  // TODO: implement props
  List<Object?> get props => [properties];

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();

}

class CacheFailure implements Failure{
  @override
  final List properties;
  CacheFailure(this.properties);

  @override
  // TODO: implement props
  List<Object?> get props => [properties];

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();

}