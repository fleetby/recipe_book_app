import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book_app/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:recipe_book_app/presentation/widgets/sign_form.dart';

@RoutePage()
class RequireSignPage extends StatelessWidget {
  const RequireSignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state is AuthenticationSignedIn) {
          context.router.maybePop();
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: switch (state) {
            AuthenticationInitial() || AuthenticationError() => SignForm(
                SignFormType.signIn,
                onSignInSubmit: (email, password) =>
                    context.read<AuthenticationBloc>().add(
                          AuthenticationSignIn(
                            email: email,
                            password: password,
                          ),
                        ),
                onSignUpSubmit: (email, password) =>
                    context.read<AuthenticationBloc>().add(
                          AuthenticationSignUp(
                            email: email,
                            password: password,
                          ),
                        ),
              ),
            AuthenticationSignedIn() ||
            AuthenticationLoading() =>
              const Center(child: CircularProgressIndicator()),
          },
        );
      },
    );
  }
}
