import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBar_Container extends StatelessWidget {
  const AppBar_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 100,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/avatar_luffy.jpg'),
              radius: 30,
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Good Afternoon"),
              Text(
                "Yuji Itadori",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Spacer(),
          PopupMenuButton(
            itemBuilder: (BuildContext context) => const [
              PopupMenuItem(
                child: Text("Explore Comic"),
              ),
              PopupMenuItem(
                child: Text("Explore Comic"),
              ),
              PopupMenuItem(
                child: Text("Explore Comic"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
