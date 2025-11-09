import 'package:fitnest/config/theme/theme_extensions.dart';
import 'package:fitnest/routing/routes.dart';
import 'package:fitnest/ui/auth/login/login_screen_vm.dart';
import 'package:fitnest/ui/core/localization/localization_extensions.dart';
import 'package:fitnest/ui/core/widgets/app_form_field.dart';
import 'package:fitnest/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen(this.viewModel, {super.key});

  final LoginScreenVM viewModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginScreenVMProvider);
    final appLocalization = context.localization;
    final palette = context.palette;
    final typography = context.typography;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30.0, top: 60),
          child: Column(
            children: [
              Text(
                appLocalization.hetThere,
                style: typography.largeText.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 5),
              Text(
                appLocalization.welcomeBack,
                style: typography.h4.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    AppFormField(
                      controller: _emailController,
                      validator: Validators.validateEmail,
                      label: appLocalization.email,
                      prefixIcon: Icons.email_outlined,
                    ),
                    SizedBox(height: 15),
                    AppFormField(
                      controller: _passwordController,
                      label: appLocalization.password,
                      prefixIcon: Icons.lock_outline_rounded,
                      validator: Validators.validatePasswordLogin,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      persistentFooterDecoration: BoxDecoration(),
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            widget.viewModel.login(
                              _emailController.text,
                              _passwordController.text,
                            );
                          }
                        },
                        child: state.isLoading
                            ? CircularProgressIndicator(color: Colors.white)
                            : Text(appLocalization.login),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    appLocalization.dontHaveAccount,
                    style: typography.mediumText,
                  ),
                  TextButton(
                    onPressed: () {
                      context.go(Routes.signup);
                    },
                    child: Text(
                      appLocalization.register,
                      style: typography.mediumText.copyWith(
                        foreground: Paint()
                          ..shader = palette.secondaryGradient.createShader(
                            Rect.fromLTWH(0, 0, 150, 20),
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
