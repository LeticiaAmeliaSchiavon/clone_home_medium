import 'package:clone_home_medium/widgets/custom_button.widget.dart';
import 'package:clone_home_medium/widgets/social_button.widget.dart';
import 'package:clone_home_medium/widgets/terms_and_privacy.widget.dart';
import 'package:flutter/material.dart';

class HomeMediumPage extends StatelessWidget {
  const HomeMediumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  "assets/images/medium.png",
                  height: 40,
                  key: const ValueKey("imageMedium"),
                ),
              ),
              const SizedBox(height: 100),
              const Text(
                "Join Medium.",
                key: ValueKey("textTitle"),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w400,
                  fontFamily: "serif",
                ),
              ),
              const SizedBox(height: 40),
              const SocialButton(
                key: ValueKey("signupGoogle"),
                pathImage: "assets/images/google.png",
                text: "Sign up with Google",
              ),
              const SizedBox(height: 15),
              const SocialButton(
                key: ValueKey("signupEmail"),
                pathImage: "assets/images/email.png",
                text: "Sign up with Email",
              ),
              const SizedBox(height: 25),
              Row(
                children: const [
                  Expanded(
                    child: Divider(
                      key: ValueKey("dividerLeft"),
                      color: Colors.black26,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or, sign up with",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      key: ValueKey("dividerRight"),
                      color: Colors.black26,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const Center(
                child: CustomButton(key: ValueKey("buttonFacebook")),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Already have an account? "),
                  Text("Sign in", style: TextStyle(color: Colors.green)),
                ],
              ),
              const Spacer(),
              const TermsAndPrivacy(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
