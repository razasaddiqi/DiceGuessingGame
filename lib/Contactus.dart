import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class Contactus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: ContactUsBottomAppBar(
          companyName: 'LearnHubStudio',
          textColor: Colors.white,
          backgroundColor: Colors.teal.shade300,
          email: 'umair.nawaz1997@gmail.com',
        ),
        backgroundColor: Colors.teal,
        body: ContactUs(
          cardColor: Colors.white,
          textColor: Colors.teal.shade900,
          logo: AssetImage('images/ii.jpg'),
          email: 'umair.nawaz1997@gmail.com',
          companyName: 'Umair Nawaz',
          companyColor: Colors.teal.shade100,
          phoneNumber: '+923322253600',
          website: 'https://learnhubstudio.com',
          githubUserName: 'umairnawaz333',
        ),
      ),
    );
  }
}