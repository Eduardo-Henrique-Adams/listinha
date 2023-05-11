import 'package:flutter/material.dart';

class EditTaskBoard extends StatefulWidget {
  const EditTaskBoard({Key? key}) : super(key: key);

  @override
  State<EditTaskBoard> createState() => _EditTaskBoardState();
}

class _EditTaskBoardState extends State<EditTaskBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LISTINHA'),
      ),
    );
  }
}
