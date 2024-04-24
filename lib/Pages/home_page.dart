import 'package:flutter/material.dart';

//import 'package:circular_menu/circular_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/avatar_luffy.jpg'),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Good Afternoon"),
                          Text(
                            "Yuji Itadori",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    PopupMenuButton<String>(
                      onSelected: (String value) {
                        // Handle menu item selection
                        print('You selected: $value');
                        showAboutDialog(context: context);
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'Option 1',
                          child: Text('Option 1'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'Option 2',
                          child: Text('Option 2'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'Option 3',
                          child: Text('Option 3'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
