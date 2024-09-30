import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:scalers_challange/features/all_jobs/data/models/AllJobsModel.dart';
import 'package:scalers_challange/features/all_jobs/presentation/bloc/all_jobs_cubit.dart';
import 'package:scalers_challange/features/all_jobs/presentation/screen/all_jobs_screen.dart';
import 'package:scalers_challange/features/job_details/presentation/bloc/job_details_cubit.dart';

// Mock the AllJobsCubit and JobDetailsCubit
class MockAllJobsCubit extends MockCubit<AllJobsState>
    implements AllJobsCubit {}

class MockJobDetailsCubit extends MockCubit<JobDetailsState>
    implements JobDetailsCubit {}

void main() {
  late MockAllJobsCubit mockAllJobsCubit;
  late MockJobDetailsCubit mockJobDetailsCubit;

  setUp(() {
    mockAllJobsCubit = MockAllJobsCubit();
    mockJobDetailsCubit = MockJobDetailsCubit();
  });

  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AllJobsCubit>.value(value: mockAllJobsCubit),
          BlocProvider<JobDetailsCubit>.value(value: mockJobDetailsCubit),
        ],
        child: widget,
      ),
    );
  }

  testWidgets('shows CircularProgressIndicator when state is loading',
      (tester) async {
    // Arrange
    when(() => mockAllJobsCubit.state).thenReturn(AllJobsLoading());

    // Act
    await tester.pumpWidget(buildTestableWidget(const AllJobsScreen()));

    // Assert
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('shows list of jobs when state is success', (tester) async {
    // Arrange
    final List<JobsData> jobList = [
      // Add mock job data here
    ];
    when(() => mockAllJobsCubit.state).thenReturn(AllJobsSuccess(jobList));

    // Act
    await tester.pumpWidget(buildTestableWidget(const AllJobsScreen()));
    await tester.pumpAndSettle(); // Wait for the widget to settle

    // Assert
    expect(find.byType(ListView), findsOneWidget);
    // Add more assertions to check if the job items are displayed
  });

  testWidgets('shows error message when state is error', (tester) async {
    // Arrange
    const errorMessage = 'Failed to load jobs';
    when(() => mockAllJobsCubit.state).thenReturn(AllJobsError(errorMessage));

    // Act
    await tester.pumpWidget(buildTestableWidget(const AllJobsScreen()));
    await tester.pumpAndSettle();

    // Assert
    expect(find.text(errorMessage), findsOneWidget);
  });
}
