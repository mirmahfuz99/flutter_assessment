import 'package:flutter/material.dart';
import 'package:flutter_assessment/config/routes/routes.dart';
import 'package:flutter_assessment/config/theme/light_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}


class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [

        ],
        child: MaterialApp(
          theme: light,
          navigatorKey: _navigatorKey,
          onGenerateRoute: AppRoutes.onGenerateRoutes,
        )
    );
  }
}
