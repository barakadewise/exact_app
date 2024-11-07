import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 0.4, color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 20, left: 10, top: 2, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/exact_logo.png',
                      width: 100,
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 158, 101, 15),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 9, horizontal: 17),
                          child: Text(
                            "Full time",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ))
                  ],
                ),
                const Text(
                  "Transport Supervisor (1)",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const Text(
                  "Exact Manpower Consulting Ltd",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
                const Text(
                  "Job type: Full time",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
                const Text(
                  'Location: Dar es salaam Tanzania',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
                const Row(
                  children: [
                    Text("Deadline : ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 9, 25, 66))),
                    Text("Fri, 15 Nov 2024",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey))
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 1, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Show",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 9, 25, 66)),
                    )),
                const Row(
                  children: [
                    Icon(
                      CupertinoIcons.eye,
                      color: Color.fromARGB(255, 158, 101, 15),
                    ),
                    Text(
                      "156",
                      style:
                          TextStyle(color: Color.fromARGB(255, 158, 101, 15)),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      CupertinoIcons.heart_fill,
                      color: Color.fromARGB(255, 158, 101, 15),
                    ),
                    Text(
                      "90",
                      style:
                          TextStyle(color: Color.fromARGB(255, 158, 101, 15)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
