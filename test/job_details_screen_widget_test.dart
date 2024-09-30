import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:scalers_challange/features/job_details/data/models/JobDetailsModel.dart';
import 'package:scalers_challange/features/job_details/presentation/bloc/job_details_cubit.dart';
import 'package:scalers_challange/features/job_details/presentation/screens/job_details_screen.dart';

// Mock the JobDetailsCubit
class MockJobDetailsCubit extends MockCubit<JobDetailsState>
    implements JobDetailsCubit {}

void main() {
  late MockJobDetailsCubit mockJobDetailsCubit;

  setUp(() {
    mockJobDetailsCubit = MockJobDetailsCubit();
  });

  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      home: BlocProvider<JobDetailsCubit>.value(
        value: mockJobDetailsCubit,
        child: widget,
      ),
    );
  }

  testWidgets('shows CircularProgressIndicator when state is loading',
      (tester) async {
    // Arrange
    when(() => mockJobDetailsCubit.state).thenReturn(JobDetailsLoading());

    // Act
    await tester.pumpWidget(buildTestableWidget(const JobDetailScreen()));

    // Assert
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('shows error message when state is error', (tester) async {
    // Arrange
    const errorMessage = 'Failed to load job details';
    when(() => mockJobDetailsCubit.state)
        .thenReturn(JobDetailsError(errorMessage));

    // Act
    await tester.pumpWidget(buildTestableWidget(const JobDetailScreen()));
    await tester.pumpAndSettle(); // Wait for any animations to finish

    // Assert
    expect(find.text(errorMessage), findsOneWidget);
  });

  testWidgets('shows job details when state is success', (tester) async {
    // Arrange
    final mockJobDetails = JobDetailsData(
      company: Company(
        name: 'Mock Company',

        ///todo : use asset image when test
        logo: 'https://via.placeholder.com/150',
      ),
    );

    when(() => mockJobDetailsCubit.state)
        .thenReturn(JobDetailsSuccess(mockJobDetails));

    // Act
    await tester.pumpWidget(buildTestableWidget(const JobDetailScreen()));
    await tester.pumpAndSettle(); // Wait for any animations to finish

    // Assert
    expect(find.text('Mock Company'), findsOneWidget);
    expect(find.text('Senior Flutter Developer'), findsOneWidget);
    expect(find.text('Remote · Onsite · Full-Time'), findsOneWidget);
    expect(find.text('Job description goes here'), findsOneWidget);
    expect(find.byType(ElevatedButton),
        findsOneWidget); // Ensures the "Apply" button is displayed
  });
}
