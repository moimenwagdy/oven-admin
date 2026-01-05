import 'package:flutter/material.dart';
import 'package:oven_admin/utils/helpers/screen_dimensions.dart';
import 'package:oven_admin/widgets/authetication_widgets.dart/auth_form.dart';
import 'package:oven_admin/widgets/authetication_widgets.dart/welcome_message.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: context.screenHeight,
            width: context.screenWidth,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              image: DecorationImage(
                image: AssetImage("lib/assets/logo_larg-burn.png"),
                opacity: .05,
              ),
            ),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  border: BoxBorder.all(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 40,
                  children: [WelcomeMessage(), AuthForm()],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
