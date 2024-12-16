import 'package:fpdart/fpdart.dart';
import 'package:zerodha_clone/utils/failure.dart';

abstract class LoginRepository {
  const LoginRepository();

  Future<Either<Failure, Map<String, dynamic>>> login(
      String username, String password);
}
