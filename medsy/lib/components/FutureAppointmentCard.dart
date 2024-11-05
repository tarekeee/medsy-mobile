import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FutureAppointmentCard extends StatefulWidget {
  const FutureAppointmentCard({super.key});

  @override
  State<FutureAppointmentCard> createState() => _FutureAppointmentCardState();
}

class _FutureAppointmentCardState extends State<FutureAppointmentCard> {
  void see_all_button() {}

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Shadow color with opacity
              spreadRadius: 0.1, // How far the shadow spreads
              blurRadius: 10, // Softness of the shadow
              offset:
                  Offset(0, 3), // Position of the shadow (horizontal, vertical)
            ),
          ],
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/doctor/doctor1.jpg',
                      width: 45, height: 45, fit: BoxFit.cover),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Dr. Tarek Meliani',
                      style: TextStyle(fontWeight: FontWeight.w500, height: 1),
                    ),
                    Text(
                      'Imposter',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.phone,
                      color: Theme.of(context).primaryColor,
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Color(0xFFEBECFF)),
                    ))
              ],
            ),
            Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
            SizedBox(
              height: 8,
            ),
            Row(children: const [
              Icon(
                Icons.calendar_month,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Wed, November 06th',
                style: TextStyle(fontSize: 10),
              ),
              Spacer(),
              Icon(
                Icons.schedule,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '9:30 - 10:30 AM',
                style: TextStyle(fontSize: 8),
              ),
            ]),
            SizedBox(
              height: 8,
            ),
            Row(children: const [
              Icon(
                Icons.location_on_outlined,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'La Macta, 22 Street, Sidi Bel Abbes',
                style: TextStyle(fontSize: 8),
              ),
            ]),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).colorScheme.secondary),
                      side: WidgetStatePropertyAll(
                          BorderSide(color: Colors.transparent)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)))),
                ),
                SizedBox(
                  width: 8,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Confirm',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).primaryColor),
                      side: WidgetStatePropertyAll(
                          BorderSide(color: Colors.transparent)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)))),
                ),
              ],
            )
          ],
        ),
      ),
      SizedBox(
        height: 10,
      )
    ]);
  }
}
