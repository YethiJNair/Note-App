import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

enum ActionType {
  addNote,
  editNote,
}

class ScreenAdd extends StatelessWidget {
  final ActionType type;
  String? id;
  ScreenAdd({Key? key, required this.type, this.id}) : super(key: key);

  Widget get SaveButton => TextButton.icon(
      onPressed: () {
        switch (type) {
          case ActionType.addNote:
            break;
          case ActionType.editNote:
            break;
        }
      },
      icon: const Icon(
        Icons.save,
        color: Colors.white,
      ),
      label: const Text(
        "Save",
        style: TextStyle(color: Colors.white),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(type.name.toUpperCase()),
        actions: [
          SaveButton,
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Title'),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            maxLines: 4,
            maxLength: 100,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Content'),
          )
        ]),
      )),
    );
  }
}
