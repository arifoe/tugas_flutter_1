import 'package:flutter/material.dart';
import 'package:tugas_resume/Detail/Detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'TUGAS 1: RESUME FLUTTER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const CircleAvatar(
              radius: 130,
              backgroundImage: AssetImage('assets/images/male_avatar.png'),
            ),

            const SizedBox(height: 20,),

            TextButton(
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const Detail())
                  );
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                ),
                child: const Text('About me'),
            ),

            const SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
