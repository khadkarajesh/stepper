import 'package:flutter/material.dart';
import 'package:horizontalstepper/horizontalstepper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: "Demo App",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopStepper()),
                );
              },
              child: Text("Stepper in top"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomStepper()),
                );
              },
              child: Text("Stepper in bottom"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StepperValidation()),
                );
              },
              child: Text("Stepper with validation State"),
            )
          ],
        ),
      ),
    );
  }
}

class BottomStepper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: HorizontalStepper(
            steps: [
              HorizontalStep(
                title: "Pick Image",
                widget: Center(
                  child: Text("Step 1"),
                ),
                state: HorizontalStepState.SELECTED,
                isValid: true,
              ),
              HorizontalStep(
                title: "Fill Form",
                widget: Center(
                  child: Text("Step 2"),
                ),
                isValid: true,
              ),
              HorizontalStep(
                title: "Get Details ",
                widget: Center(
                  child: Text("Step 3"),
                ),
                isValid: true,
              ),
              HorizontalStep(
                title: "Find Location",
                widget: Center(
                  child: Text("Step 4"),
                ),
                isValid: true,
              )
            ],
            selectedColor: const Color(0xFF4FE2C0),
            unSelectedColor: Colors.grey.shade400,
            leftBtnColor: const Color(0xffEA7F8B),
            rightBtnColor: const Color(0xFF4FE2C0),
            selectedOuterCircleColor: const Color(0xFF40A8F4),
            type: Type.BOTTOM,
            circleRadius: 30,
            onComplete: () {
              print("completed");
            },
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              decoration: null,
            )),
      ),
      appBar: AppBar(
        title: Text("Bottom Stepper"),
      ),
    );
  }
}

class TopStepper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: HorizontalStepper(
            steps: [
              HorizontalStep(
                title: "Pick Image",
                widget: Center(
                  child: Text("Step 1"),
                ),
                state: HorizontalStepState.SELECTED,
                isValid: true,
              ),
              HorizontalStep(
                title: "Fill Form",
                widget: Center(
                  child: Text("Step 2"),
                ),
                isValid: true,
              ),
              HorizontalStep(
                title: "Get Details ",
                widget: Center(
                  child: Text("Step 3"),
                ),
                isValid: true,
              ),
              HorizontalStep(
                title: "Find Location",
                widget: Center(
                  child: Text("Step 4"),
                ),
                isValid: true,
              )
            ],
            selectedColor: const Color(0xFF4FE2C0),
            unSelectedColor: Colors.grey.shade400,
            leftBtnColor: const Color(0xffEA7F8B),
            rightBtnColor: const Color(0xFF4FE2C0),
            selectedOuterCircleColor: const Color(0xFF40A8F4),
            type: Type.TOP,
            circleRadius: 30,
            onComplete: () {
              print("completed");
            },
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              decoration: null,
            )),
      ),
      appBar: AppBar(
        title: Text("Top Stepper"),
      ),
    );
  }
}


class StepperValidation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StepperValidationState();
}

class StepperValidationState extends State<StepperValidation> {
  bool isValidStep = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: HorizontalStepper(
            steps: [
              HorizontalStep(
                title: "Pick Image",
                widget: Center(
                  child: Text("Step 1"),
                ),
                state: HorizontalStepState.SELECTED,
                isValid: true,
              ),
              HorizontalStep(
                title: "Fill Form",
                widget: Center(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        isValidStep = true;
                      });
                    },
                    child: Text(
                      "Fill up form",
                    ),
                  ),
                ),
                isValid: isValidStep,
              ),
              HorizontalStep(
                title: "Get Details ",
                widget: Center(
                  child: Text("Step 3"),
                ),
                isValid: true,
              ),
              HorizontalStep(
                title: "Find Location",
                widget: Center(
                  child: Text("Step 4"),
                ),
                isValid: true,
              )
            ],
            selectedColor: const Color(0xFF4FE2C0),
            unSelectedColor: Colors.grey.shade400,
            leftBtnColor: const Color(0xffEA7F8B),
            rightBtnColor: const Color(0xFF4FE2C0),
            selectedOuterCircleColor: const Color(0xFF40A8F4),
            type: Type.TOP,
            circleRadius: 30,
            onComplete: () {
              print("completed");
            },
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              decoration: null,
            )),
      ),
      appBar: AppBar(
        title: Text("Stepper State"),
      ),
    );
  }
}
