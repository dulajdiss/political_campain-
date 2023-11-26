import 'package:flutter/material.dart';
import 'package:untitled/ui/landing_page.dart';

class MulPituwa extends StatelessWidget {
  const MulPituwa({super.key});

  @override
  Widget build(BuildContext context) {
    // Expanded() objects takes all available space, and each Expanded gets the
    // portion of space according to it's flex.
    // SizedBox() instead has fixed height/width.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("අනුරාධ ජයරත්න"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LandingPage(
                    title: '',
                  ),
                ),
              );
              // Perform search action here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text("Mul Pituwa"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
