import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book_app/app/app.dart';
import 'package:phone_book_app/application/application.dart';
import 'package:phone_book_app/application/cubit/theme_cubit.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
        BlocProvider<AppCubit>(create: (_) => AppCubit()),
      ],
      child: const App(),
    );
  }
}
