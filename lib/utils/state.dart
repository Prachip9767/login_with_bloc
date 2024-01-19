class LoginState {
  final String username;
  final String password;
  final bool formSubmittedSuccessfully;

  LoginState({
    this.username = '',
    this.password = '',
    this.formSubmittedSuccessfully = false,
  });

  LoginState copyWith({
    String? username,
    String? password,
    bool? formSubmittedSuccessfully,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
      formSubmittedSuccessfully:
          formSubmittedSuccessfully ?? this.formSubmittedSuccessfully,
    );
  }
}
