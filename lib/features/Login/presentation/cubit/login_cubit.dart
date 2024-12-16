import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:zerodha_clone/features/Login/data/login_repository_impl.dart';
import 'package:zerodha_clone/features/Login/domain/models/login_model.dart';
import 'package:zerodha_clone/utils/failure.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final _loginRepositoryImpl = LoginRepositoryImpl();

  login({required String username, required String password}) async {
    emit(LoginInitial());

    final result = await _loginRepositoryImpl.login(username, password);

    result.fold((error) {
      emit(LoginError(Failure(error.message)));
    }, (success) {
      final loginData = LoginModel.fromJson(success);
      emit(LoginSuccess(data: loginData));
    });
  }
}
