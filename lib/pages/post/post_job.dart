import 'package:flutter/material.dart';

class PostJobPage extends StatelessWidget {
  const PostJobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.withOpacity(0.08),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          ' Create Job Post',
          style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 9, 25, 66),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  _buildTextField('Job Title', 'Enter job title'),
                  const SizedBox(height: 16),
                  _buildTextField('Company Name', 'Enter company name'),
                  const SizedBox(height: 16),
                  _buildTextField('Job Type', 'e.g. Full Time, Part Time'),
                  const SizedBox(height: 16),
                  _buildTextField(
                    'Location',
                    'e.g. Tanzania: Dar es Salaam',
                  ),
                  const SizedBox(height: 16),
                  _buildTextField('Deadline', 'e.g. Thu, 21 Nov 2024'),
                  const SizedBox(height: 16),
                  _buildTextField('Industry', 'e.g. Sports and Bet'),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEE7023),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      child: const Text(
                        'Post Job',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 9, 25, 66),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          style: const TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 9, 25, 66),
              fontWeight: FontWeight.w300),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            isDense: true,
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 0.4, color: Color.fromARGB(255, 9, 25, 66)),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xFFEE7023),
                width: 0.4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
