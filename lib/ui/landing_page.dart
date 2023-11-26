import 'package:flutter/material.dart';
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
  // int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  // TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'මුල් පිටුව1',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'ඔහු ගැන',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'ව්‍යාපෘති',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'සාකච්ඡා',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'ගැටලු',
  //     style: optionStyle,
  //   ),
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("අනුරාධ ජයරත්න"),
          actions: <Widget>[
            // IconButton(
            //   icon: Icon(Icons.home),
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (context) => const LandingPage(),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text("Row 1"),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8), // Border radius
                    child: ClipOval(
                        child: Image.network(
                            'https://th.bing.com/th/id/OIP.PnpOR8SxnK9Wrxt2gV0dzgHaHa?rs=1&pid=ImgDetMain')),
                  ),
                ),
              ),
            ),
            const Column(
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
          ],
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
