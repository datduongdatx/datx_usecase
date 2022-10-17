import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class {{name.pascalCase()}}Usecase extends {{name.pascalCase()}}Usecase<EmptyParam, User> {
  final UserRepository _userRepository;
  {{name.pascalCase()}}Usecase(UserRepository userRepository)
      : _userRepository = userRepository;

  @override
  Future<Either<Failure, User>> build(EmptyParam param) {
    return _userRepository.fetchUserInfo();
  }
}