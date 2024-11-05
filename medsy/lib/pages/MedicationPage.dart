import 'package:flutter/material.dart';
import 'package:medsy/components/FutureAppointmentCard.dart';
import 'package:medsy/components/MediactionCard.dart';

class Medication extends StatelessWidget {
  const Medication({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'My Medications',
              style: TextStyle(fontSize: 20),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
              style: ButtonStyle(
                  side: WidgetStatePropertyAll(BorderSide(
                      width: 1,
                      color: Theme.of(context).colorScheme.secondary))),
            ),
            centerTitle: true,
            // bottom: Placeholder()
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: Column(
              children: const [
                Mediactioncard(),
              ],
            ),
          )),
    );
  }
}
