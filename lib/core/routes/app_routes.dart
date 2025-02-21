import 'package:doc_doc/features/Auth/presentation/view/forget_password_view.dart';
import 'package:doc_doc/features/Auth/presentation/view/sign_in_view.dart';
import 'package:doc_doc/features/Auth/presentation/view/sign_up_view.dart';
import 'package:doc_doc/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    initialLocation: '/onboarding',
    routes: [
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: '/signIn',
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: '/signUp',
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: '/forgetPass',
        builder: (context, state) => const ForgetPasswordView(),
      ),
    ],
  );
}
