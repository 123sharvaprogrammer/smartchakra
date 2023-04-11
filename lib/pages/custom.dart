import 'package:flutter/material.dart';

class Custom extends StatefulWidget {
  const Custom({Key? key}) : super(key: key);

  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
                leading: IconButton(
                  onPressed: () async {
                    FocusManager.instance.primaryFocus?.unfocus();
                    Future.delayed(const Duration(milliseconds: 5),
                        () => Navigator.pop(context));
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                backgroundColor: Colors.grey[900],
                title: const Text("Customise"),
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
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.grey.shade800,
                body: Container(
                  margin: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Max Pressure',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 5,
                            child: const TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Enter Name',
                                  hintText: 'Enter Your Name'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Max Pressure',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 5,
                            child: const TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Enter Name',
                                  hintText: 'Enter Your Name'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Scaffold(
                body: Column(
                  children: const [],
                ),
              ),
            ])),
      ),
    );
  }
}
