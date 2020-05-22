import 'package:cleanarchitectureflutter/core/error/failure.dart';
import 'package:cleanarchitectureflutter/features/number_trivia/data/repositories/number_trivial_repository.dart';
import 'package:cleanarchitectureflutter/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> execute({int number}) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}