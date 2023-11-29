import 'package:flutter/material.dart';
import 'package:getxdmo/page1.dart';
import 'package:getxdmo/page2.dart';
import 'package:getxdmo/page3.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';

class StepperDemo extends StatefulWidget {
  const StepperDemo({super.key});

  @override
  State<StepperDemo> createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  List pages = [const Page1Demo(), const Page2Demo(), const Page3Demo()];
  // int _currentStep = 0;
  List<Step> stepsOfStepper = [
    const Step(
      title: Text('Step 1'),
      content: Page1Demo(),
      isActive: true,
    ),
    const Step(
      title: Text('Step 2'),
      content: Page2Demo(),
      isActive: false,
    ),
    const Step(
      title: Text('Step 3'),
      content: Page3Demo(),
      isActive: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SafeArea(
              child: FullLinearStepIndicator(
            backgroundColor: Colors.blueGrey,
            completedIcon: Icons.check,
            iconColor: Colors.white,
            shape: BoxShape.rectangle,
            steps: 3,
            controller: PageController(
              initialPage: stepsOfStepper.indexOf(stepsOfStepper.first),
            ),
          )),
        ],
      ),
    );
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Linear Stepper Example'),
    //     ),
    //     body: Stepper(
    //       steps: stepsOfStepper,
    //       currentStep: _currentStep,
    //       onStepContinue: () {
    //         setState(() {
    //           if (_currentStep < stepsOfStepper.length - 1) {
    //             _currentStep++;
    //           }
    //         });
    //       },
    //       onStepCancel: () {
    //         setState(() {
    //           if (_currentStep > 0) {
    //             _currentStep--;
    //           }
    //         });
    //       },
    //     ),
    //   );
  }
}
