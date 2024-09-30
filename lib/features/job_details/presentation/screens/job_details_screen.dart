import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scalers_challange/features/job_details/presentation/bloc/job_details_cubit.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(CupertinoIcons.back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text("Job Details"),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: () {},
            ),
          ],
        ),
        body: BlocBuilder<JobDetailsCubit, JobDetailsState>(
          builder: (context, state) {
            if (state is JobDetailsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is JobDetailsError) {
              return Center(
                child: Text(state.message),
              );
            }
            if (state is JobDetailsSuccess) {
              final job = state.jobDetailsModel;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Company Info
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            job.company?.logo ?? "",
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              job.company?.name ?? "",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              job.location?.nameEn ?? "",
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Job Title and Location
                    Text(
                      job.title ?? "",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${job.location!.nameEn!} · Onsite · ${job.type!.nameEn}",
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    if (job.tags != null)
                      Row(
                        children: job.tags!.jobRole!
                            .map((tag) => JobTag(text: tag.titleEn ?? ""))
                            .toList(),
                      ),
                    const SizedBox(height: 16),
                    // Job Description
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Job Description",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(job.icpAnswers?.jobRole?[0].descriptionEn ??
                                ""),
                            const SizedBox(height: 16),
                            const Text(
                              "Key Responsibilities",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(job.icpAnswers?.jobRole?[0].descriptionEn ??
                                ""),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Apply Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle apply action
                        },
                        child: const Text(
                          "Apply",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: Colors.deepPurple,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
            return Container();
          },
        ));
  }
}

class JobTag extends StatelessWidget {
  final String text;

  JobTag({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.purple[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.purple[900]),
      ),
    );
  }
}
