class SignupScreenState {
  SignupScreenState({
    this.isLoading = false,
    this.error,
    this.isTermsAccepted = false,
  });

  final bool isLoading;
  final String? error;
  final bool isTermsAccepted;

  SignupScreenState copyWith({
    bool? isLoading,
    String? error,
    bool? isTermsAccepted,
  }) {
    return SignupScreenState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      isTermsAccepted: isTermsAccepted ?? this.isTermsAccepted,
    );
  }
}
