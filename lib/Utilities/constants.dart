import 'package:flutter/material.dart';

const InputDecoration kYourNameTextFieldDecoration = InputDecoration(
filled: true,
fillColor: Colors.white,
hintText: 'Your name',
border: OutlineInputBorder(borderSide: BorderSide.none),
);

const InputDecoration kCrushNameTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Your crush\'s name',
  border: OutlineInputBorder(borderSide: BorderSide.none),
);

const TextStyle kHeaderTextStyle = TextStyle(fontSize: 35,
    fontWeight: FontWeight.w900,);

const EdgeInsets kContainerEdgeInsets = EdgeInsets.all(15.0);

const TextStyle kIntroTextStyle = TextStyle(
  fontSize: 20.0,
);

const EdgeInsets kTextFieldPadding = EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0);

const TextStyle kButtonTextStyle = TextStyle(
  fontSize: 20.0,
);

const TextStyle kResultTextStyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const TextStyle kPercentTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 100.0,
);

const TextStyle kInterpretationTextStyle = TextStyle(
  fontSize: 22.0,
);