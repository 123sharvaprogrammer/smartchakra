import 'package:flutter/material.dart';
class Terrain extends StatelessWidget {
  const Terrain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('Terrain'),
      backgroundColor: Colors.grey[900],
    ),         body: SafeArea(
            child: Container(
              color: Colors.grey[800],
              height: MediaQuery.of(context).size.height - 24,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                                      'Default',
                                    ),
                                    onPressed: () {},
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
                                    child: const Text('Sandy'),
                                    onPressed: (){},
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: 70,
                                  width: 300,
                                  child: ElevatedButton(
                                    child: const Text('Mushy'),
                                    onPressed: (){},
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: 70,
                                  width: 300,
                                  child: ElevatedButton(
                                    child: const Text('Ghat Roads'),
                                    onPressed: () {},
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: 70,
                                  width: 300,
                                  child: ElevatedButton(
                                    child: const Text('Snowy'),
                                    onPressed: () {},
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  height: 70,
                                  width: 300,
                                  child: ElevatedButton(
                                    child: const Text('Muddy Roads'),
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
          )
    );
  }
}
