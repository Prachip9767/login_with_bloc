import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_with_bloc/custom_widgets/custom_elevated_button.dart';
import 'package:login_with_bloc/custom_widgets/custom_textfield.dart';
import 'package:login_with_bloc/events/login_events.dart';
import 'package:login_with_bloc/utils/login_bloc.dart';
import 'package:login_with_bloc/utils/state.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  const LoginForm(
      {Key? key,
      required this.usernameController,
      required this.passwordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(state.formSubmittedSuccessfully
                ? 'Login Successful'
                : 'Username or Password Invalid'),
            duration: const Duration(seconds: 2),
            backgroundColor: Colors.blueAccent,
          ),
        );
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello Again!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 40),
                  AppTextField(
                    isPasswordTextfiled: false,
                    controller: usernameController,
                    hinText: 'Email Address',
                    iconData: Icon(Icons.email, color: Colors.grey.shade400),
                  ),
                  const SizedBox(height: 16),
                  AppTextField(
                    isPasswordTextfiled: true,
                    controller: passwordController,
                    hinText: 'Password',
                    iconData: Icon(Icons.lock, color: Colors.grey.shade400),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: AppButton(
                      title: 'Login',
                      onPressed: () {
                        BlocProvider.of<LoginBloc>(context).add(
                          LoginButtonPressed(
                            username: usernameController.text,
                            password: passwordController.text,
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
