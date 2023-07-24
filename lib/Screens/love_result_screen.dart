import 'package:flutter/material.dart';
import '../Widgets/bottom_button.dart';
import 'package:love_finder/Utilities/constants.dart';

import '../Widgets/results_card.dart';

class LoveResult extends StatelessWidget {
   const LoveResult({Key? key, required this.loveVerdict, required this.loveScore, required this.loveComment}) : super(key: key);
  final String loveVerdict;
  final String loveScore;
  final String loveComment;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Love Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: const Text(
                'Results',
                style: kHeaderTextStyle,

              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResultsCard(
              color: Colors.pink,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Text(
                      loveVerdict,
                      style: kResultTextStyle
                  ),
                  Text(
                      loveScore,
                      style: kPercentTextStyle
                  ),
                  Text(
                    loveComment,
                    textAlign: TextAlign.center,
                    style: kInterpretationTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'Re-check Compatibility',
            onTap: (){
              Navigator.pop(context);
              },
          ),

        ],
      ),
    );
  }
}






