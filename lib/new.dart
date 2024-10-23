import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Coffee extends StatelessWidget {
  const Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Stack(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/cofeeee.jpeg"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightGreen,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text("Cappuccino"),
              Spacer(),
              Icon(Icons.favorite, color: Colors.red),
            ],
          ),
          Row(
            children: [
              Text("Drizzled with Caramel"),
              SizedBox(width: 15),
              Icon(Icons.star, color: Colors.yellow),
              Text("4.5"),
            ],
          )
        ],
      ),
    ));
  }
}
