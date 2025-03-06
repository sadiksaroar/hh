import 'package:flutter/material.dart';

class EarnHeartsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Earn hearts', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Icon and Text
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green[200],
              child: Icon(Icons.book, color: Colors.white, size: 30),
            ),
            SizedBox(height: 10),

            // Jumping People Illustration (Replace with Asset)
            Image.asset(
              'assets/jumping_people.png', // Replace with actual image
              width: 250,
            ),
            SizedBox(height: 20),

            // Hearts Animation / Image
            Image.asset(
              'assets/hearts.png', // Replace with actual hearts image
              width: 120,
            ),
            SizedBox(height: 10),

            // Heart Indicator Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Icon(
                  index < 2 ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                );
              }),
            ),
            SizedBox(height: 30),

            // Play Advertise Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // Action for playing ad
              },
              child: Text(
                "Play Advertise",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
