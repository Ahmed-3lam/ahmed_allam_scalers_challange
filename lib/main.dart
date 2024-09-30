import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scalers_challange/core/dependencies/injection.dart';
import 'package:scalers_challange/core/network/dio_helper.dart';
import 'package:scalers_challange/features/all_jobs/presentation/screen/all_jobs_screen.dart';
import 'package:scalers_challange/features/job_details/presentation/bloc/job_details_cubit.dart';

import 'features/all_jobs/presentation/bloc/all_jobs_cubit.dart';

void main() async {
  await configureDependencies();
  serviceLocator<DioHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AllJobsCubit(serviceLocator())..fetchAllJobs(),
        ),
        BlocProvider(
          create: (context) => JobDetailsCubit(),
        ),
      ],
      child: BlocBuilder<AllJobsCubit, AllJobsState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: AllJobsScreen(),
            ),
          );
        },
      ),
    );
  }
}
