import '../repositories/auth_repository.dart';

class LoginPresenter {
  final AuthRepository _authRepository;

  LoginPresenter(this._authRepository);

  Future<void> login() => _authRepository.signInWithGoogle();

  Future<void> logout() => _authRepository.signOut();
}
