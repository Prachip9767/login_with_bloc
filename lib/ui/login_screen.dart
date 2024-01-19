import 'package:flutter/material.dart';
import 'package:login_with_bloc/custom_widgets/login_form_widget.dart';
import 'package:login_with_bloc/custom_widgets/blue_panel_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isLargeScreen = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      body:isLargeScreen ? buildLargeScreenUI() : buildSmallScreenUI()
    );
  }

  Widget buildLargeScreenUI() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          flex: 3,
          child: BluePanelScreen(),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(100),
            child: LoginForm(
              usernameController: _usernameController,
              passwordController: _passwordController,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSmallScreenUI() {
    return LoginForm(
      usernameController: _usernameController,
      passwordController: _passwordController,
    );
  }
}

// {
// "email": "eve.holt@reqres.in",
// "password": "cityslicka"
// }
