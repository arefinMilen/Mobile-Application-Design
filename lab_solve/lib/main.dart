import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 72, 7, 185)),
      ),
      home: const UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User DashBoard'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://www.istockphoto.com/photo/positive-successful-millennial-business-professional-man-head-shot-portrait-gm1388253782-445953938?utm_source=pexels&utm_medium=affiliate&utm_campaign=sponsored_photo&utm_content=srp_inline_media&utm_term=profile%20picture'), 
                ),
                const SizedBox(width: 17),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'MR Max',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Software Engineer',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
              child: const Text('View Profile'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 31, 6, 155),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 4,
                  child: SizedBox(

                    width: MediaQuery.of(context).size.width * 0.45,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('🧑‍🧒‍🧒', style: TextStyle(fontSize: 24)),
                        SizedBox(height: 8),
                        Text('1.2k  followers'),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  child: SizedBox(

                    width: MediaQuery.of(context).size.width * 0.45,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: const [
                        Text('❤️', style: TextStyle(fontSize: 24)),
                        SizedBox(height: 8),
                        Text('5.4K Likes'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(

              child: ListView.builder(
                itemCount: 5, 
                itemBuilder: (context, index) {

                  return Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text('Recent Activity ${index + 1}'),
                      subtitle: const Text(' ✉️ You received a new message                                 ➡️'),
                    ),
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

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('View Profile'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          
          children: [
            Card(
              elevation: 4,
              child: SizedBox(
                height: 100,
                child: Center(
                  child: Text('Name : MR Max      Profession : Software Engineer'),
                  
                ),
              ),
            ),
            const SizedBox(height :17),
            Card(
              elevation: 4,
              child: SizedBox(
                height: 100,
                child: Center(
                  child: Text('id: 221-15-5279         Email:mr.max@example.com'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}