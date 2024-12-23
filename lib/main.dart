import 'dart:convert';



import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework_2/providers/local_provider.dart';
import 'package:homework_2/screens/details.dart';
import 'package:homework_2/screens/favorites_page.dart';
import 'package:homework_2/widgets/localtype/localtype_grid.dart';
import 'package:provider/provider.dart';

import '../firebase_options.dart';
import 'models/localtype.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<LocalProvider>(
          create: (_) => LocalProvider(),
        )
      ],
      child: const MyApp(),
    ),
   );
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinkiBytes',
      initialRoute: '/',
      routes: {
        '/' : (context) => const Home(),
        '/details': (context) => const Details(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;



  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    LocalType localType1 = LocalType(id: 0, type: "MARKET", image: 'images/2.jpg');
    LocalType localType2 = LocalType(id: 1, type: "RESTAURANT", image: 'images/4.jpg');
    LocalType localType3 = LocalType(id: 2, type: "COFFEE BAR", image: 'images/5.jpg');
    LocalType localType4 = LocalType(id: 3, type: "BAKERY", image: 'images/1.jpg');
    LocalType localType5 = LocalType(id: 4, type: "FAST FOOD RESTAURANT", image: 'images/3.jpg');

    // Add to list
    List<LocalType> localtypes = [localType1, localType2, localType3, localType4, localType5];

    final favoriteCount = context
        .watch<LocalProvider>()
        .local
        .where((j) => j.isFavorite)
        .length;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 58, 144, 1.0),
        title: const Text("FINKI BYTES", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings, color: Colors.grey, size: 24))],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home,color: Colors.black,), label: 'Locals'),
          NavigationDestination(
            icon: Badge(
              label: Text("$favoriteCount"),
              child: const Icon(Icons.favorite, color: Colors.black,),
            ),
            label: 'Favorites',

          ),
        ],
        selectedIndex: currentPageIndex,
        backgroundColor: Color.fromRGBO(0, 58, 144, 1.0),
      ),

      body: [
        LocalTypeGrid(localtypes: localtypes),
        const FavoritesPage(),
      ][currentPageIndex],);
  }
}


