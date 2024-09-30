import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scalers_challange/core/extensions/time_extensions.dart';
import 'package:scalers_challange/features/job_details/presentation/bloc/job_details_cubit.dart';
import 'package:scalers_challange/features/job_details/presentation/screens/job_details_screen.dart';

import '../bloc/all_jobs_cubit.dart';

class AllJobsScreen extends StatelessWidget {
  const AllJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: BlocBuilder<AllJobsCubit, AllJobsState>(
        builder: (context, state) {
          if (state is AllJobsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is AllJobsSuccess) {
            return _items(state);
          } else if (state is AllJobsError) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.work_outline),
          label: 'Jobs',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work_outline),
          label: 'Resume',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: 'Settings',
        ),
      ],
    );
  }

  ListView _items(AllJobsSuccess state) {
    return ListView.builder(
      itemCount: state.jobs.length,
      itemBuilder: (context, index) {
        final job = state.jobs[index];
        return InkWell(
          onTap: () {
            context.read<JobDetailsCubit>().getJobDetails(job.job?.uuid ?? "");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => JobDetailScreen(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFF8F6F8),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        job.job?.company?.logo ?? "",
                        width: 54,
                        height: 54,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            job.job?.icpAnswers?.jobrole?[0].titleEn ?? "",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Text(
                            job.job?.icpAnswers?.jobrole?[0].descriptionEn ??
                                "",
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            job.job?.location?.nameEn ?? "",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      job.job?.updatedDate?.calculateTimeDifference() ?? "",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text('Jobs',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_none),
          onPressed: () {},
        ),
      ],
    );
  }
}
