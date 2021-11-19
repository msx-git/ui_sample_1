import 'package:flutter/material.dart';
import 'package:ui_sample_1/data.dart';
import 'package:ui_sample_1/widgets/card_details.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          alignment: Alignment.topLeft,
          child: const Text(
            'Selected Card',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(20),
                  //border: Border.all()
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 150,
                      bottom: -200,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white24,

                        ),
                      ),
                    ),
                    Positioned.fill(
                      left: -300,
                      top: -120,
                      bottom: -80,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white24,

                        ),
                      ),
                    ),
                  const CardDetails(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
