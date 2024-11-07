import 'package:exactapp/pages/home/components/featured_candidates_card.dart';
import 'package:exactapp/pages/home/components/job_card.dart';
import 'package:exactapp/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'data/dummy_user_list.dart';

class HomePage extends StatelessWidget {
  final ScrollController scrollController;
  const HomePage({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(SizeConfig.heightSize(context, 0.18)),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.blueGrey.withOpacity(0.08),
            leading: Padding(
              padding: const EdgeInsets.all(6),
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/e_logo.png',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            bottom: const TabBar(
              labelColor: Color.fromARGB(255, 9, 25, 66),
              unselectedLabelColor: Colors.grey,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Color.fromARGB(255, 9, 25, 66)),
                insets: EdgeInsets.symmetric(horizontal: 16.0),
              ),
              tabs: [
                Tab(text: 'All Jobs'),
                Tab(text: 'Featured Candidates'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            JobCardView(scrollController: scrollController),
            FeatureCandidates(
              scrollController: scrollController,
            ),
          ],
        ),
      ),
    );
  }
}

class JobCardView extends StatelessWidget {
  final ScrollController scrollController;
  const JobCardView({super.key, required this.scrollController});

  @override
  Widget build(
    BuildContext context,
  ) {
    return ListView.builder(
        controller: scrollController,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const JobCard();
        });
  }
}

class FeatureCandidates extends StatelessWidget {
  final ScrollController scrollController;
  const FeatureCandidates({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];

        return ProfileCard(
          isAvailale: user['isAvailale'],
          name: user['name'],
          position: user['position'],
          location: user['location'],
          views: user['views'],
          likes: user['likes'],
        );
      },
    );
  }
}
