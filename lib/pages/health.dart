import 'package:flutter/material.dart';

class Health extends StatefulWidget {
  const Health({Key? key}) : super(key: key);

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
            title: const Text("Overall Health"),
            toolbarHeight: 80,
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.cloudy_snowing),
              ),
              Tab(
                icon: Icon(Icons.air_sharp),
              ),
            ])),
        body: TabBarView(children: [
      Scaffold(
        backgroundColor: Colors.grey[800],
        body: Column(
          children: [
            const Text('Pressure'),
            Image.asset('assets/car.png')
          ],
        ),
      ),      Scaffold(
            backgroundColor: Colors.grey[800],
        body: Column(
          children: [
            const Text('Templerature'),
            Image.asset('assets/car.png')
          ],
        ),
      )
        ])
      ),
    );
  }
}
