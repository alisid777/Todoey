import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 40,
                fontWeight: FontWeight.w400),
          ),
          TextField(
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 2)),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
              ),
            ),
            textAlign: TextAlign.center,
            onChanged: (value) {
              print(value);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Add',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius
                        .zero, // Zero border radius for a rectangular shape
                  ),
                ),
                foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
                backgroundColor:
                    WidgetStatePropertyAll<Color>(Colors.lightBlueAccent)),
          ),
        ],
      ),
    );
  }
}
