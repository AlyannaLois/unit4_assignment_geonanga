import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alyanna\'s App',  
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alyanna Lois\' Page'),
        backgroundColor: Color(0xFFe3892c),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              children: [
                 Container(
                  padding: EdgeInsets.all(4.0), 
                  decoration: BoxDecoration(
                  color: Color(0xFF2b2b2d), 
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/images/Geonanga.PNG'),
                ),
              ),
            SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'I am Alyanna Lois H. Geonanga',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFe3892c)),
                    ),
                    Text(
                      'Nice to meet you!',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            

            InfoSection(icon: Icons.home, title: 'Address', data: 'Blk. 82, Lot 1, Anaros Village, Mandurriao, Iloilo City'),
            InfoSection(icon: Icons.email, title: 'Email', data: 'alyannalois.geonanga@wvsu.edu.ph'),
            InfoSection(icon: Icons.info, title: 'Course', data: 'Bachelor of Science in Information Technology'),
            InfoSection(icon: Icons.person, title: 'Hobbies', data: 'Watching movies/series, Journaling, Baking'),
            InfoSection(icon: Icons.favorite, title: 'Favorites', data: 'Fashion, UI/UX Design, Eating Pasta'),
            Biography(),
          ],
        ),
      ),
    );
  }
}

class InfoSection extends StatelessWidget {
  final IconData icon;
  final String title;
  final String data;

  InfoSection({required this.icon, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
   return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 4.0), 
      decoration: BoxDecoration(
        color: Color(0xFF2b2b2d),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Color(0xFFe3892c), width: 2.0), 
      ),
      child: Row(
        children: [
          Icon(icon, size: 30.0, color: Color(0xFFe3892c)),
          SizedBox(width: 10.0),
          Text(
            '$title: ',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            data,
            style: TextStyle(fontSize: 14, color: Colors.white)
            ), 
        ],
      ),
    );
  }
}

class Biography extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
      padding: EdgeInsets.all(9.0),
      margin: EdgeInsets.symmetric(vertical: 8.0), 
      decoration: BoxDecoration(
        color: Color(0xFF2b2b2d),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Color(0xFFe3892c), width: 2.0),
      ),  
      child: Column(
                    
        children: [
          SizedBox(height: 12.0),
          Text(
            'My Biography',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
            textAlign: TextAlign.center,
            ),
          SizedBox(height: 10.0),
          Text(
            'I’m a 3rd year CICT student pursuing a degree in Information Technology, driven by a passion for innovation and design.' 
            ' Outside of academics, I love immersing myself in movies and series, journaling my thoughts, and experimenting with baking.' 
            ' Fashion and UI/UX design fuels my creativity which allows me to explore the harmony between aesthetics and functionality.' 
            ' My deep fascination with technology inspires me to dream and start my own tech startup, where I can combine my love for design and tech to create transformative solutions that make a difference.',
            style: TextStyle(fontSize: 14, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 14.0),
        ],
      ),
    );
  }
}