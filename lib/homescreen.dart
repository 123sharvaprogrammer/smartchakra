import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartchakra/pages/custom.dart';
import 'package:smartchakra/pages/health.dart';
import 'package:smartchakra/pages/terrain.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
 setState(() {
   SystemChrome.setPreferredOrientations([
     DeviceOrientation.portraitUp,
     DeviceOrientation.portraitDown
   ]);
 });
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Container(
              color: Colors.grey[900],
              height: MediaQuery.of(context).size.height - 24,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(50),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        color: Colors.grey[700],
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                child: SizedBox(
                                  height: 70,
                                  width: 300,
                                  child: ElevatedButton(
                                    child: const Text(
                                      'My Car',
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const MyCar()));
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: 70,
                                  width: 300,
                                  child: ElevatedButton(
                                    child: const Text('Custom'),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Custom()));
                                    },
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: 70,
                                  width: 300,
                                  child: ElevatedButton(
                                    child: const Text('Health'),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Health()));
                                    },
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: 70,
                                  width: 300,
                                  child: ElevatedButton(
                                    child: const Text('Terrain'),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Terrain()));
                                    },
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: 70,
                                  width: 300,
                                  child: ElevatedButton(
                                    child: const Text('Settings'),
                                    onPressed: () {},
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class MyCar extends StatefulWidget {
  const MyCar({Key? key}) : super(key: key);

  @override
  State<MyCar> createState() => MyCarState();
}

class MyCarState extends State<MyCar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[900],
            title: const Text("My Car"),
            toolbarHeight: 80,
            bottom: const TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(0.1),
                tabs: [
                  Tab(
                    text: 'Car 1',
                  ),
                  Tab(
                    text: 'Car 2',
                  ),
                ]),
            actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
          ),
          body: TabBarView(children: [
            Container(
              color: Colors.grey[800],
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Scaffold(
                  backgroundColor: Colors.grey[800],
                  body: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              color: const Color.fromARGB(181, 255, 255, 255),
                              child: Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 60,
                                    color: Colors.white,
                                    child: Row(
                                      children: const [Text(('data')), Text(('data'))],
                                    ),
                                  ),
                                  const Text('Tyre 3')
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 200,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              color: const Color.fromARGB(181, 255, 255, 255),
                              child: Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 60,
                                    color: Colors.white,
                                    child: Row(
                                      children: const [Text(('data')), Text(('data'))],
                                    ),
                                  ),
                                  const Text('Tyre 3')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/car.png',
                        width: MediaQuery.of(context).size.width / 1.6,
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              color: const Color.fromARGB(181, 255, 255, 255),
                              child: Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 60,
                                    color: Colors.white,
                                    child: Row(
                                      children: const [Text(('data')), Text(('data'))],
                                    ),
                                  ),
                                  const Text('Tyre 3')
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 200,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              color: const Color.fromARGB(181, 255, 255, 255),
                              child: Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 60,
                                    color: Colors.white,
                                    child: Row(
                                      children: const [Text(('data')), Text(('data'))],
                                    ),
                                  ),
                                  const Text('Tyre 3')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center
                          ,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: (){}, child: const Text("Default")),
                            ElevatedButton(onPressed: (){}, child: const Text("Custom Default"))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey[800],
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Scaffold(
                  backgroundColor: Colors.grey[800],
                  body: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              color: const Color.fromARGB(181, 255, 255, 255),
                              child: Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 60,
                                    color: Colors.white,
                                    child: Row(
                                      children: const [Text(('data')), Text(('data'))],
                                    ),
                                  ),
                                  const Text('Tyre 3')
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 200,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              color: const Color.fromARGB(181, 255, 255, 255),
                              child: Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 60,
                                    color: Colors.white,
                                    child: Row(
                                      children: const [Text(('data')), Text(('data'))],
                                    ),
                                  ),
                                  const Text('Tyre 3')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/car.png',
                        width: MediaQuery.of(context).size.width / 1.6,
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              color: const Color.fromARGB(181, 255, 255, 255),
                              child: Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 60,
                                    color: Colors.white,
                                    child: Row(
                                      children: const [Text(('data')), Text(('data'))],
                                    ),
                                  ),
                                  const Text('Tyre 3')
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 200,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              color: const Color.fromARGB(181, 255, 255, 255),
                              child: Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 60,
                                    color: Colors.white,
                                    child: Row(
                                      children: const [Text(('data')), Text(('data'))],
                                    ),
                                  ),
                                  const Text('Tyre 3')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center
                          ,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          ElevatedButton(onPressed: (){}, child: const Text("Default")),
                          ElevatedButton(onPressed: (){}, child: const Text("Custom Default"))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
