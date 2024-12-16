import 'package:fpdart/fpdart.dart';
import 'package:zerodha_clone/features/Login/domain/repository/login_repository.dart';
import 'package:zerodha_clone/services/dio_client.dart';
import 'package:zerodha_clone/utils/failure.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<Either<Failure, Map<String, dynamic>>> login(
      String username, String password) async {
    try {
      Map<String, dynamic> body = {'username': username, 'password': password};

      final response = await DioClient().apiRequestWithDio(
        url: 'http://192.168.140.232:3000/auth/api/login',
        requestBody: body,
        requestType: HttpMethod.post,
      );
      if (response.data != null && response.data is Map<String, dynamic>) {
        return right(response.data as Map<String, dynamic>);
      } else {
        return left(Failure('Data not found'));
      }
    } on Failure catch (e) {
      throw e.message;
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
