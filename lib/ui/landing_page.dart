import 'package:flutter/material.dart';
import 'package:untitled/constant/constant.dart';
import 'package:untitled/ui/about_him.dart';
import 'package:untitled/ui/discussions.dart';
import 'package:untitled/ui/mul_pituwa.dart';
import 'package:untitled/ui/pojects.dart';
import 'package:untitled/ui/troubles.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.title});

  final String title;

  @override
  State<LandingPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 198, 75, 75),
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title:const Text(name),
          actions: <Widget>[],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          color: Colors.blue,
                          child: Center(
                            child: Text("Row 1"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          color: Colors.blue,
                          child: Center(
                            child: Text("Row 2"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          color: Colors.blue,
                          child: Center(
                            child: Text("Row 3"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          color: Colors.blue,
                          child: Center(
                            child: Text("Row 4"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // color: Colors.green,
                    child: Center(
                      // child: Padding(
                      //   padding: const EdgeInsets.all(8), // Border radius
                      //   child: ClipOval(
                      child: Image.network(
                          'https://th.bing.com/th/id/OIP.PnpOR8SxnK9Wrxt2gV0dzgHaHa?rs=1&pid=ImgDetMain'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Column(
                  children: <Widget>[
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        // TextButton(
                        //   onPressed: _showToast,
                        //   child: const Text('TextButton'),
                        // ),
                        const TextButton(
                          onPressed: null,
                          child: Text('Call'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // body: Center(
        //   child: _widgetOptions[_selectedIndex],
        // ),
        drawer: Drawer(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                CircleAvatar(
                  radius: 56,
                  backgroundColor: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8), // Border radius
                    child: ClipOval(
                        child: Image.network(
                            'https://th.bing.com/th/id/OIP.PnpOR8SxnK9Wrxt2gV0dzgHaHa?rs=1&pid=ImgDetMain')),
                  ),
                ),
                Divider(),
                ListTile(
                  title: const Text('මුල් පිටුව'),
                  // selected: _selectedIndex == 0,
                  onTap: () {
                    // Update the state of the app
                    // _onItemTapped(0);
                    // Then close the drawer
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MulPituwa(),
                      ),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  title: const Text('ඔහු ගැන'),
                  // selected: _selectedIndex == 1,
                  onTap: () {
                    // Update the state of the app
                    // _onItemTapped(1);
                    // Then close the drawer
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AboutHim(),
                      ),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  title: const Text('ව්‍යාපෘති'),
                  // selected: _selectedIndex == 2,
                  onTap: () {
                    // Update the state of the app
                    // _onItemTapped(2);
                    // Then close the drawer
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Projects(),
                      ),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  title: const Text('සාකච්ඡා'),
                  //    selected: _selectedIndex == 3,
                  onTap: () {
                    // Update the state of the app
                    //        _onItemTapped(3);
                    // Then close the drawer
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Discussions(),
                      ),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  title: const Text('ගැටලු'),
                  //       selected: _selectedIndex == 4,
                  onTap: () {
                    // Update the state of the app
                    //         _onItemTapped(4);
                    // Then close the drawer
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Troubles(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
