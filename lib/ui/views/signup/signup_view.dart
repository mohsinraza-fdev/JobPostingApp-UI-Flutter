import 'package:assignment1/ui/shared/styles.dart';
import 'package:assignment1/ui/smart_widgets/signup_form.dart';
import 'package:flutter/material.dart';
import '../../dumb_widgets/authentication_layout.dart';
import '../login/login_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: appPrimaryColor,
        body: AuthenticationLayout(
          welcomeTitle: 'Let\'s sign you up',
          welcomeText: 'Welcome\nJoin the community!',
          form: const SignUpForm(
            nameHintText: 'Enter your full name',
            emailHintText: 'Enter your email address',
            passwordHintText: 'Enter your password',
          ),
          mainButtonTitle: 'Sign Up',
          mainButtonOnTapped: () {},
          textButtonTitle: 'Sign In',
          textButtonInfo: 'Already have an account? ',
          textButtonOnTapped: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: ((context) => const LoginView())));
          },
        ),
      ),
    );
  }
}
