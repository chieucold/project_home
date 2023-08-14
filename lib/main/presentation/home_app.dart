import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project_home/feature/home/presentation/home_screen.dart';
import 'package:project_home/main/domain/config/app_router.dart';
import 'package:project_home/main/domain/config/multi_bloc_provider.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: ListBlocProvider.provider(),
      child: Builder(builder: (context) {
        return const AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            onGenerateRoute: AppRouter.onGenerateRouted,
            initialRoute: AppRouter.splash,
            home: HomeScreen(),
          ),
        );
      }),
    );
  }
}
