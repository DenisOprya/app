import 'package:app/widgets/home_page.dart';
import 'package:app/widgets/moviePage/movie_details.dart';
import 'package:app/widgets/moviePage/movie_page.dart';
import 'package:app/widgets/tv_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const HomePage(),
      routes: {
        '/main_screen': (context) => const HomePage(),
        '/movie_screen/movie_details': (context) => const MovieDetailsWidget()
      },
      initialRoute: 'main_screen',
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;

  void _tabPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    FirstPage(),
    MoviePage(),
    TvPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        onTap: _tabPage,
        currentIndex: _selectedPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: ''),
        ],
      ),
    );
  }
}
