import 'package:exactapp/pages/home/components/featured_candidates_card.dart';
import 'package:exactapp/pages/home/components/job_card.dart';
import 'package:exactapp/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
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
        body: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.08),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 50,
                            child: Image.asset(
                              'assets/images/e_logo.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          // Welcome message and user logo
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: Image.asset(
                                  'assets/images/user.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Text(
                                "Welcome back",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.check_mark_circled,
                                color: Colors.orange,
                              ),
                              Text(
                                "1353",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 9, 25, 66)),
                              ),
                              Text("Recruited with us",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromARGB(255, 9, 25, 66)))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(CupertinoIcons.check_mark_circled,
                                  color: Colors.orange),
                              Text(
                                "1353",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 9, 25, 66)),
                              ),
                              Text("Job Seekers",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromARGB(255, 9, 25, 66)))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.check_mark_circled,
                                color: Colors.orange,
                              ),
                              Text(
                                "1353",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 9, 25, 66)),
                              ),
                              Text("Job post",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromARGB(255, 9, 25, 66)))
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TabBar(
                        labelColor: Color.fromARGB(255, 9, 25, 66),
                        unselectedLabelColor: Colors.grey,
                        indicator: UnderlineTabIndicator(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 9, 25, 66)),
                          insets: EdgeInsets.symmetric(horizontal: 16.0),
                        ),
                        tabs: [
                          Tab(text: 'All Jobs'),
                          Tab(text: 'Featured Candidates'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Body content (TabBarView)
            Expanded(
              child: TabBarView(
                children: [
                  JobCardView(scrollController: scrollController),
                  FeatureCandidates(scrollController: scrollController),
                ],
              ),
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
