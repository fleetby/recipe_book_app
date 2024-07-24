import 'package:flutter/material.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

typedef SignInSubmitCallback = void Function(String email, String password);
typedef SignUpSubmitCallback = void Function(String email, String password);

enum SignFormType { signIn, signUp }

class SignForm extends StatefulWidget {
  const SignForm(
    this.type, {
    this.onSignInSubmit,
    this.onSignUpSubmit,
    super.key,
  });

  final SignFormType type;
  final SignInSubmitCallback? onSignInSubmit;
  final SignUpSubmitCallback? onSignUpSubmit;

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  var _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: tr.emailLabel,
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _passwordController,
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                labelText: tr.passwordLabel,
                suffixIcon: IconButton(
                  onPressed: () => setState(() {
                    _passwordVisible = !_passwordVisible;
                  }),
                  icon: _passwordVisible
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                ),
              ),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  widget.onSignInSubmit?.call(
                    _emailController.text,
                    _passwordController.text,
                  );
                }
              },
              child: Text(tr.signInAction),
            ),
            const Divider(height: 20),
            OutlinedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  widget.onSignUpSubmit?.call(
                    _emailController.text,
                    _passwordController.text,
                  );
                }
              },
              child: Text(tr.signUpAction),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
