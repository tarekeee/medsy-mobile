import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:medsy/components/RecommendedDoctors.dart';
import 'package:medsy/components/UpcomingAppointments.dart';
import 'package:medsy/pages/AppointmentsPage.dart';
import 'package:medsy/pages/MedicationPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: navItems(context),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _index,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: <Widget>[
        Home(),
        Home(),
        Appointments(),
        Medication(),
        Home(),
      ][_index],
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back,',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Text(
                'Username',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_active))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
          child: Column(
            children: [
              SearchBar(
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(12))),
                elevation: WidgetStatePropertyAll(0),
                leading: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 16, vertical: 0)),
                hintText: 'Search doctors...',
                hintStyle:
                    WidgetStateProperty.resolveWith((Set<WidgetState> state) {
                  if (state.contains(WidgetState.focused)) {
                    return TextStyle(color: Colors.black);
                  }
                  return TextStyle(color: Colors.grey);
                }),
              ),
              SizedBox(
                height: 16,
              ),
              UpcomingAppointments(),
              SizedBox(
                height: 20,
              ),
              RecommededDoctors()
            ],
          ),
        ),
      ),
    );
  }
}

List<BottomNavigationBarItem> Function(BuildContext context) navItems =
    (BuildContext context) => [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ('Home'),
              activeIcon: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.primary,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.memory,
              ),
              label: 'Tracker',
              activeIcon: Icon(
                Icons.memory,
                color: Theme.of(context).primaryColor,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range),
              label: ('Appointments'),
              activeIcon: Icon(
                Icons.date_range,
                color: Theme.of(context).primaryColor,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.medication),
              label: ('Medication'),
              activeIcon: Icon(
                Icons.medication,
                color: Theme.of(context).primaryColor,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              activeIcon: Icon(
                Icons.person,
                color: Theme.of(context).primaryColor,
              )),
        ];
