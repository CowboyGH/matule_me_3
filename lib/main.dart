import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:matule_me_3/features/auth/data/repositories/auth_repository.dart';
import 'package:matule_me_3/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:matule_me_3/router/router.dart';
import 'package:matule_me_3/servises/preferences_service.dart';
import 'package:matule_me_3/theme/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  Supabase.initialize(
      url: 'https://xdzdfvtqvhfttjdkxnfq.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhkemRmdnRxdmhmdHRqZGt4bmZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzk1MTQzMzgsImV4cCI6MjA1NTA5MDMzOH0.yXfseTt4zwO9kH-Zvz8HvuE6MPlhwRWCyTowA98NBx4');

  GetIt.instance.registerLazySingleton(() => PreferencesService());
  GetIt.instance.registerLazySingleton(() => Supabase.instance);

  runApp(
    BlocProvider(
      create: (context) => AuthBloc(AuthRepository()),
      child: MatuleMe(),
    ),
  );
}

class MatuleMe extends StatelessWidget {
  const MatuleMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: theme,
    );
  }
}
