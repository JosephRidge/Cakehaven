import 'package:flutter/material.dart';
import '../widgets/text.dart';
import '../utils/constants.dart' as globalConstants;
import '../widgets/edittext.dart';
import '../pages/cakepage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  proceedToCakePage(var context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyCakePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: globalConstants.primaryColor,
        title: const TextWidget(
            displayText: globalConstants.appName, styleVariant: 'subtitle'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const TextWidget(
                  displayText: globalConstants.welcomeText,
                  styleVariant: 'title'),
              const TextWidget(
                  displayText: globalConstants.homeSubTitle,
                  styleVariant: 'subtitle'),
              const TextWidget(
                  displayText: globalConstants.homeGetStarted,
                  styleVariant: 'normal'),
              const EditText(
                hintText: 'Enter your name here ...',
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom( 
                  backgroundColor: globalConstants.secondaryColor,
                  alignment: Alignment.center,
                  minimumSize: globalConstants.buttonMinSize,
                  padding: globalConstants.buttonPadding,
                  shape: const RoundedRectangleBorder(
                    borderRadius: globalConstants.borderRadius,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyCakePage()),
                  );
                },
                child: const TextWidget(
                    displayText: 'proceed', styleVariant: 'button'),
              )
            ],
          )),
    );
  }
}
