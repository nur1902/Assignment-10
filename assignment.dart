import 'package:flutter/material.dart';

import 'CourseCard.dart';

class assignment extends StatelessWidget {
  assignment({super.key});
  final List<Map<String, String>> courses = [
    {
      'title': 'Full Stack Web Development with JavaScript (MERN)',
      'batch': 'ব্যাচ ১৯',
      'duration': '৬ দিন বাকি',
      'avaible': '৬ সিট বাকি',
      'image': 'https://cdn.ostad.app/course/cover/2024-12-17T11-35-19.890Z-Course%20Thumbnail%2012.jpg'
    },
    {
      'title': 'Full Stack Web Development with Python, Django & React',
      'batch': 'ব্যাচ ৬',
      'duration': '৪০ দিন বাকি',
      'avaible': '৮৬ সিট বাকি',
      'image': 'https://cdn.ostad.app/course/cover/2024-12-19T15-48-52.487Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg'
    },
    {
      'title': 'Full Stack Web Development with ASP.Net Core',
      'batch': 'ব্যাচ ৭',
      'duration': '৩৯ দিন বাকি',
      'avaible': '৭৫ সিট বাকি',
      'image': 'https://cdn.ostad.app/course/cover/2024-12-18T15-29-34.261Z-Untitled-1%20(23).jpg'
    },
    {
      'title': 'SQA: Manual & Automated Testing',
      'batch': 'ব্যাচ ২৩',
      'duration': '৪১ দিন বাকি',
      'avaible': '৬৫ সিট বাকি',
      'image': 'https://cdn.ostad.app/course/cover/2024-12-18T15-24-44.114Z-Untitled-1%20(21).jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: const Color(0xFFF4F6F8),
      appBar: AppBar(
        title: const Text("Courses"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 cards per row
            mainAxisSpacing: 16,
            crossAxisSpacing: 10,
            childAspectRatio: 0.72,
          ),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            final course = courses[index];
            return CourseCard(
              title: course['title']!,
              batch: course['batch']!,
              duration: course['duration']!,
              avaible: course['avaible']!,
              image: course['image']!,
            );
          },
        ),
      ),
    );
  }
}
