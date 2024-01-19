import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_with_bloc/service/login_api.dart';
import 'package:login_with_bloc/utils/login_bloc.dart';


import 'ui/login_screen.dart';

void main() {
  runApp(LogInApp());
}

class LogInApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthenticationRepository authenticationRepository = AuthenticationRepository();

    return MaterialApp(
      title: 'Flutter BLoC Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (context) => LoginBloc(authenticationRepository: authenticationRepository),
        child: LoginScreen(),
      ),
    );
  }
}