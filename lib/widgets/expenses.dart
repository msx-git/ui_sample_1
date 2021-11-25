import 'package:flutter/material.dart';
import 'package:ui_sample_1/data.dart';
import 'package:ui_sample_1/widgets/pie_chart.dart';

class Expenses extends StatelessWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 5.0),
          child: const Text(
            'Expenses',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: category
                      .map((value) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor:
                                      pieColors[category.indexOf(value)],
                                ),
                                const SizedBox(width: 4.0),
                                Text(value['name'],
                                    style: const TextStyle(fontSize: 20)),
                              ],
                            ),
                      ))
                      .toList(),
                ),
              ),
            ),
            const Expanded(flex: 3,child: PieChart()),
          ],
        ),
      ],
    );
  }
}
