import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:veete/widgets/colors.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heating;
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap:() => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: COLORS.kOriginal,
                    ),
                  ),
                  const RotatedBox(
                    quarterTurns: 135,
                    child: Icon(
                    Icons.bar_chart_rounded,
                    color: COLORS.kOriginal,
                  ),
                  )
                ],
              ),
              Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      const SizedBox(height: 32),
                      CircularPercentIndicator(
                        radius: 180,
                        lineWidth: 14,
                        percent: 0.75,
                        progressColor: COLORS.kOriginal,
                        center: const Text(
                          '26/u00B0',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ),
                      const SizedBox(height: 32),
                      const Center(
                        child: Text(
                          'Temperature',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: COLORS.kBlackColor
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _roundedButton(title: 'GENERAL', isActive: true),
                          _roundedButton(title: 'SERVICES'),
                        ],
                      ),
                      const SizedBox(height: 32),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        decoration: BoxDecoration(
                          color: COLORS.kPrimaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                              child: Text(
                                'HEATING',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Slider(
                                value: heating, 
                                onChanged: (newHeating){
                                  setState(() => heating = newHeating);
                            },
                              max: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const[
                                  Text('0/u00B0'),
                                  Text('15/u00B0'),
                                  Text('30/u00B0'),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

  void setState(double Function() param0) {}
}

Widget _roundedButton({
  required String title,
  bool isActive = false,
}){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
    decoration: BoxDecoration(
      color: isActive ? COLORS.kOriginal : Colors.transparent,
      borderRadius: BorderRadius.circular(24),
      border: Border.all(color: COLORS.kOriginal)
    ),
    child: Text(
      title,
      style: TextStyle(
        color: isActive ? COLORS.kPrimaryColor : COLORS.kBlackColor,
      ),
    ),
  );
}