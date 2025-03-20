import 'package:flutter/material.dart';

class CreatePollPage extends StatelessWidget {
  const CreatePollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Create Poll"),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Column(
        children: [Text("What would you like to  work?")],
      ),
    );
  }
}
