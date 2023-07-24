import 'package:flutter/material.dart';
import '../Widgets/bottom_button.dart';
import '../Utilities/functionality_page.dart';
import 'package:love_finder/Utilities/constants.dart';
import 'love_result_screen.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const TextInput(),
      appBar: AppBar(
        title: const Text('Love Calculator'),
      ),
    );
  }
}

class TextInput extends StatefulWidget {
  const TextInput({Key? key}) : super(key: key);

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();

  void clearTextFields() {
    firstController.clear();
    secondController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('Check your compatibility!', style: kHeaderTextStyle),
          const Text(
            'Enter your name, and the name of your lover and let\'s see whether you two are meant to be.',
            style: kIntroTextStyle,
          ),
          const CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage('images/Felice26.jpg'),
            backgroundColor: Colors.pink,
          ),
          Padding(
            padding: kTextFieldPadding,
            child: TextField(
              decoration: kYourNameTextFieldDecoration,
              controller: firstController,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: kTextFieldPadding,
            child: TextField(
              decoration: kCrushNameTextFieldDecoration,
              controller: secondController,
            ),
          ),
          BottomButton(
            buttonText: 'Check Compatibility',
            onTap: () {
              if (firstController.text.isNotEmpty &&
                  secondController.text.isNotEmpty) {
                FunctionalityPage compare = FunctionalityPage();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoveResult(
                        loveVerdict: compare.displayLoveVerdict(),
                        loveScore: compare.displayLoveScore(),
                        loveComment: compare.displayLoveComment(),
                      );
                    },
                  ),
                );
              } else if (firstController.text.isEmpty &&
                  secondController.text.isEmpty) {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                      title: const Text('Error!',
                      textAlign: TextAlign.center,),
                      content: const Text('Both fields must not be empty.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ]),
                );
              }
              else if (firstController.text.isEmpty ||
                  secondController.text.isEmpty) {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                      title: const Text('Error!',
                        textAlign: TextAlign.center,),
                      content: const Text('Fill out required field.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ]),
                );
              }
              clearTextFields();
            },
          ),
        ],
      ),
    );
  }
}
