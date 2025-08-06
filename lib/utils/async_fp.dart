import 'package:fpdart/fpdart.dart';

typedef FEither<L, R> = Future<Either<L, R>>;
typedef FOption<T> = Future<Option<T>>;
