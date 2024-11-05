import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UpcomingAppointments extends StatefulWidget {
  const UpcomingAppointments({super.key});

  @override
  State<UpcomingAppointments> createState() => _UpcomingAppointmentsState();
}

class _UpcomingAppointmentsState extends State<UpcomingAppointments> {
  void see_all_button() {}

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Upcoming Appointment',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          TextButton(
              onPressed: see_all_button,
              child: Text(
                'See All',
                style: TextStyle(fontSize: 12),
              ))
        ],
      ),
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
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10)),
                  width: 45,
                  height: 45,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10))),
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'Dec',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          '06',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
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
                style: TextStyle(fontSize: 10),
              )
            ]),
            SizedBox(
              height: 3,
            ),
            Row(children: [
              Icon(
                Icons.calendar_month,
                size: 15,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '02 days left',
                style: TextStyle(
                    fontSize: 10, color: Theme.of(context).colorScheme.primary),
              )
            ])
          ],
        ),
      )
    ]);
  }
}
