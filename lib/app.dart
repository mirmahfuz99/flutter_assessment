import 'package:flutter/material.dart';
import 'package:flutter_assessment/config/routes/route_name.dart';
import 'package:flutter_assessment/config/routes/routes.dart';
import 'package:flutter_assessment/features/app_theme/bloc/theme_bloc.dart';
import 'package:flutter_assessment/features/app_theme/bloc/theme_state.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/item_bloc.dart';
import 'package:flutter_assessment/features/home/presentation/bloc/item_event.dart';
import 'package:flutter_assessment/features/item_details/presentation/bloc/item_details_bloc.dart';
import 'package:flutter_assessment/injection_container.dart';
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
          BlocProvider<ItemBloc>(
              create: (_) => sl<ItemBloc>()..add(const GetItems()),
          ),
          BlocProvider<ItemDetailsBloc>(
              create: (_) => sl<ItemDetailsBloc>(),
          ),
          BlocProvider<ThemeBloc>(
              create: (_) => sl<ThemeBloc>(),
          ),

        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              theme: state.themeData,
              navigatorKey: _navigatorKey,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: AppRoutes.onGenerateRoutes,
              initialRoute: RouteName.homePage,
            );
          },
        )
    );
  }
}
