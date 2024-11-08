import 'package:exactapp/pages/employers/components/employer_card.dart';
import 'package:exactapp/pages/employers/data/employers_list.dart';
import 'package:flutter/material.dart';

class EmployersPage extends StatelessWidget {
  const EmployersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.withOpacity(0.08),
        centerTitle: true,
        title: const Text(
          'Employers',
          style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 9, 25, 66),
              fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 8,
                ),
                itemCount: employerList.length,
                itemBuilder: (context, index) {
                  final employer = employerList[index];
                  return EmployerCard(
                    url: employer.imgUrl,
                    name: employer.name,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
