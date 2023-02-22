import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 23, 255),
        leading: const Icon(Icons.menu),
        title: const Text('IPH'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.notifications),
            tooltip: 'search',
          )
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.face),
          label: 'Login',
        ),
      ]),
      body: SizedBox(
        height: 500,
        width: 500,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                '/Users/iphtech30/Desktop/test/flutter/images/iph.png',
              ),
            ),
            Image.asset(
                '/Users/iphtech30/Desktop/test/flutter/images/img.jpeg'),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Expanded(
                flex: 1,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          onPressed: previous,
                          child: Icon(
                            Icons.skip_previous,
                            color: Color.fromARGB(255, 38, 27, 245),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          onPressed: like,
                          child: Icon(
                            Icons.thumb_up_outlined,
                            color: Color.fromARGB(255, 38, 27, 245),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ElevatedButton(
                          onPressed: next,
                          child: Icon(
                            Icons.skip_next,
                            color: Color.fromARGB(255, 38, 27, 245),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

previous() {
  Image.asset('/Users/iphtech30/Desktop/test/flutter/images/game.webp');
  print('clicked');
}

next() {
  Image.asset('/Users/iphtech30/Desktop/test/flutter/images/game.jpeg');
  print('clicked');
}

like() {
  print('clicked');
}
/Users/iphtech30/Desktop/test/flutter/first_layout/demo/lib/main.dart