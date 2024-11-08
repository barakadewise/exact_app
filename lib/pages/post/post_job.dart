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
        backgroundColor: Colors.blueGrey.withOpacity(0.08),
        centerTitle: true,
        title: const Text(
          'Post Job',
          style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 9, 25, 66),
              fontWeight: FontWeight.w400),
        ),
        toolbarTextStyle: const TextStyle(
          color: Color.fromARGB(255, 9, 25, 66),
        ),
      ),
      body: Center(
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Sign In or Register to Add a Job Post',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(height: 20),
                Text('Sign In / Register'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
