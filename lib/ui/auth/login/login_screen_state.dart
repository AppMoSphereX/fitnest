class LoginScreenState {
  LoginScreenState({this.isLoading = false, this.error});

  final bool isLoading;
  final String? error;

  LoginScreenState copyWith({bool? isLoading, String? error}) {
    return LoginScreenState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
