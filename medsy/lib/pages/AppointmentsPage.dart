import 'package:flutter/material.dart';
import 'package:medsy/components/FutureAppointmentCard.dart';

class Appointments extends StatelessWidget {
  const Appointments({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'My Appointments',
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
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary, // Background color of the TabBar
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(6),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: Colors.white, // Active tab color
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelColor: Colors.black, // Active tab text color
                    unselectedLabelColor: Colors.grey,
                    dividerColor: Colors.transparent, // Inactive tab text color
                    tabs: const [
                      Tab(text: 'Upcoming'),
                      Tab(text: 'Past'),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: const [
                      FutureAppointements(),
                      Center(child: Text("Transit Tab")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FutureAppointements extends StatelessWidget {
  const FutureAppointements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
            primary: true,
            shrinkWrap: false,
            itemCount: 10,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Neareast Appointement',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FutureAppointmentCard(),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Future Appointement',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                );
              }
              return FutureAppointmentCard();
            },
          ),
        )
      ],
    );
  }
}
