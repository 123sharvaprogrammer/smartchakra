// ignore_for_file: use_build_context_synchronously

import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartchakra/homescreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'scanQrCode.dart';
Future main() async {
    WidgetsFlutterBinding.ensureInitialized();
    final prefs = await SharedPreferences.getInstance();
    final showHome = prefs.getBool('showHome') ?? false;

    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
    ]);
    runApp(Home(showHome: showHome));
}


class Home extends StatelessWidget {
final bool showHome;
    const Home({Key? key, required this.showHome}) : super(key: key);

  @override
  Widget build(BuildContext context ) {
    return MaterialApp(
        routes: {
            '/a': (context) =>  const FlutterBlueApp()
        },
        home: showHome ? const HomeScreen() : const OnBoardingScreen()
    );
  }
}


class OnBoardingScreen extends StatefulWidget {
    const OnBoardingScreen({Key? key}) : super(key: key);

    @override
    // ignore: library_private_types_in_public_api
    _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

    final controller = PageController();
    bool isLastPage = false;

    @override
    void dispose() {
        controller.dispose();
        super.dispose();
    }
    late String scanresult; //varaible for scan result text
    @override
    void initState() {
        scanresult = "none"; //innical value of scan result is "none"
        super.initState();
    }


    @override
    Widget build(BuildContext context) {
        return MaterialApp(
          home: Scaffold(
              body: Container(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: PageView(
                      onPageChanged: (index) {
                          setState(() {
                              isLastPage = index == 3;
                          });
                      },
                      controller: controller,
                      children: [
                          Container(color: Colors.red,child: const Text('a'),),
                          Container(color: Colors.pink,child: const Text('a'),),
                          Container(color: Colors.blue,child: const Text('a'),),
                          Container(color: Colors.redAccent,child: const Text('a'),),
                      ],),
              ),
              bottomSheet: isLastPage
                  ? Container(width: double.infinity, height: 80, color: Colors.amber,child: TextButton(onPressed: () async {
                  // You can request multiple permissions at once.
                  Map<Permission, PermissionStatus> statuses = await [
                      Permission.photos,
                      Permission.camera,
                      Permission.bluetoothConnect,
                      Permission.bluetoothScan,
                      Permission.bluetooth
                      //add more permission to request here.
                  ].request();
                  statuses;
                      String scanResult = (await scanner.scan())!;

                  if(scanResult != ''){
                      showDialog(context: context, builder: (context) => AlertDialog(
                          title: const Text("Sensor ID Information"),
                          content: Text(
                              scanResult
                          ),

                          actions: [
                              TextButton(onPressed: (){Navigator.pop(context);}, child: const Text("Cancel")),
                              TextButton(onPressed: () async {
                                  final prefs = await SharedPreferences.getInstance();
                                  // write
                                  prefs.setString('BL_UUID', scanResult);
                                  // read
                                  Navigator.pushNamed(context, '/a');
                              }, child: const Text("Done")),
                          ],
                      ));
                      } else {
                  }

              }, child: const Text('Get Started', style: TextStyle(fontSize: 28),)),)
                  :
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 80,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          TextButton(onPressed: (){
                              controller.jumpToPage(3);
                          }, child: const Text('Skip')),
                          Center(child: SmoothPageIndicator(
                              controller: controller,
                              count: 4,
                              onDotClicked: (index) => controller.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
                          ),),
                          TextButton(onPressed: (){
                              controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                          }, child: const Text('Next'))
                      ],
                  ),
              ),
          ),
        );
    }
}
class Stage extends StatelessWidget {
  const Stage({Key? key}) : super(key: key);

  // ignore: recursive_getters
  String get scanResult => scanResult;

  @override
  Widget build(BuildContext context) {
    return Text(scanResult);
  }
}

