import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawy_app/features/_1_auth/presentation/views/bodies/widgets/Sign_Up_Body.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpBody(),
    );
  }
}
