import 'dart:ui' as ui;

import 'package:fitnest/routing/routes.dart';
import 'package:fitnest/ui/auth/signup/signup_screen_vm.dart';
import 'package:fitnest/ui/core/localization/app_localization.dart';
import 'package:fitnest/ui/core/widgets/app_form_field.dart';
import 'package:fitnest/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen(this.viewModel, {super.key});

  final SignupScreenVM viewModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(signupScreenVMProvider);
    final appLocalization = AppLocalization.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30.0, top: 60),
          child: Column(
            children: [
              Text(
                appLocalization.hetThere,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 5),
              Text(
                appLocalization.createAnAccount,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    AppFormField(
                      controller: _firstNameController,
                      label: appLocalization.firstName,
                      prefixIcon: Icons.person_outline_rounded,
                    ),
                    SizedBox(height: 15),
                    AppFormField(
                      controller: _lastNameController,
                      label: appLocalization.lastName,
                      prefixIcon: Icons.person_outline_rounded,
                    ),
                    SizedBox(height: 15),
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
                      validator: Validators.validatePasswordSignup,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: state.isTermsAccepted,
                    fillColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.disabled)) {
                        return Color.fromARGB(255, 173, 164, 165);
                      }
                      if (states.contains(WidgetState.selected)) {
                        return Color(0xFF92A3FD);
                      }
                      return Colors.transparent;
                    }),
                    onChanged: (value) {
                      widget.viewModel.setTermsAccepted(value ?? false);
                    },
                  ),
                  Expanded(
                    child: Text(
                      appLocalization.termsAndConditions,
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.5,
                        color: Color.fromARGB(255, 173, 164, 165),
                      ),
                    ),
                  ),
                ],
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
                        onPressed: state.isTermsAccepted
                            ? () {
                                if (_formKey.currentState!.validate()) {
                                  widget.viewModel.signup(
                                    _emailController.text,
                                    _passwordController.text,
                                    '',
                                    '',
                                  );
                                }
                              }
                            : null,
                        style: ButtonStyle(
                          backgroundBuilder: (context, states, child) {
                            return Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: !state.isTermsAccepted
                                      ? [
                                          Color.fromARGB(255, 173, 164, 165),
                                          Color.fromARGB(255, 173, 164, 165),
                                        ]
                                      : [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
                                ),
                              ),
                              child: child,
                            );
                          },
                        ),
                        child: state.isLoading
                            ? CircularProgressIndicator()
                            : Text(
                                appLocalization.register,
                                style: TextStyle(
                                  fontSize: 16,
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
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
                    appLocalization.alreadyHaveAccount,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.pushReplacement(Routes.login);
                    },
                    child: Text(
                      appLocalization.login,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        foreground: Paint()
                          ..shader = ui.Gradient.linear(
                            const Offset(0, 20),
                            const Offset(150, 20),
                            <Color>[Color(0xFFC58BF2), Color(0xFFEEA4CE)],
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
