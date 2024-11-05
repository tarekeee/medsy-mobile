import 'package:flutter/material.dart';

class Mediactioncard extends StatelessWidget {
  const Mediactioncard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1),
          color: Colors.red),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Text(
                'Amoxicllin',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Until Sat.November 30th',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
              Spacer(),
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    size: 15,
                  ))
            ],
          ),
          Row()
        ],
      ),
    );
  }
}
