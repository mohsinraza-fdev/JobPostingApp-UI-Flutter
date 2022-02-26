import 'package:assignment1/ui/shared/styles.dart';
import 'package:assignment1/ui/smart_widgets/login_form.dart';
import 'package:flutter/material.dart';
import '../../dumb_widgets/authentication_layout.dart';
import '../job_listing/job_listing_view.dart';
import '../signup/signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: appPrimaryColor,
        body: AuthenticationLayout(
          welcomeTitle: 'Let\'s sign you in',
          welcomeText: 'Welcome back\nyou\'ve been missed!',
          form: const LoginForm(
            emailHintText: 'Enter your email address',
            passwordHintText: 'Enter your password',
          ),
          mainButtonTitle: 'Sign In',
          mainButtonOnTapped: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => const JobListingView()))),
          textButtonTitle: 'Register',
          textButtonInfo: 'Don\'t have an account? ',
          textButtonOnTapped: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) => const SignUpView()))),
        ),
      ),
    );
  }
}
