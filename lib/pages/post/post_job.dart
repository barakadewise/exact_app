import 'package:exactapp/pages/home/home_page.dart';
import 'package:exactapp/pages/navagation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostJobPage extends StatelessWidget {
  const PostJobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const NavigationPage()));
              },
              icon: const Icon(
                CupertinoIcons.arrow_left,
                size: 20,
              )),
          centerTitle: true,
          title: const Text(
            'Post Job',
            style: TextStyle(
                color: Color.fromARGB(255, 9, 25, 66),
                fontWeight: FontWeight.w300),
          ),
          toolbarTextStyle: const TextStyle(
            color: Color.fromARGB(255, 9, 25, 66),
          ),
          backgroundColor: Colors.blueGrey.withOpacity(0.08)),
      body: Center(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Sign In or Register to Add a Job Post',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sign In / Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
