import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecommededDoctors extends StatefulWidget {
  const RecommededDoctors({super.key});

  @override
  State<RecommededDoctors> createState() => _RecommededDoctorsState();
}

class _RecommededDoctorsState extends State<RecommededDoctors> {
  void see_all_button() {}

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Recommeded Doctors',
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
      SizedBox(
        height: 345,
        width: double.infinity,

        // fit: FlexFit.tight,
        child: ListView.builder(
          primary: true,
          shrinkWrap: false,
          itemCount: 10,
          itemBuilder: (context, index) {
            return RecommendedDoctorCard(
              key: Key(index.toString()),
            );
          },
        ),
      )
    ]);
  }
}

class RecommendedDoctorCard extends StatelessWidget {
  const RecommendedDoctorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8,
        ),
        Container(
          // height: 1000,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color:
                    Colors.grey.withOpacity(0.2), // Shadow color with opacity
                spreadRadius: 0.1, // How far the shadow spreads
                blurRadius: 10, // Softness of the shadow
                offset: Offset(
                    0, 3), // Position of the shadow (horizontal, vertical)
              ),
            ],
          ),
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/doctor/doctor1.jpg',
                    width: 90, height: 90, fit: BoxFit.cover),
              ),
              SizedBox(
                width: 10,
                height: 90,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Visibility(
                    visible: true,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                      decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: Theme.of(context).primaryColor,
                            size: 10,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Proffesinal Doctor',
                            style: TextStyle(
                                fontSize: 8,
                                color: Theme.of(context).primaryColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Dr. Tarek Meliani',
                    style: TextStyle(fontWeight: FontWeight.w500, height: 1),
                  ),
                  Text(
                    'Imposter',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '3.7',
                        style: TextStyle(fontSize: 8),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 2,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '15 Reviews',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              Spacer(),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      width: 2, color: Theme.of(context).colorScheme.secondary),
                ),
                child: Center(
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
