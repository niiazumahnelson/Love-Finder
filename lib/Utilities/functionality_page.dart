import 'dart:math';

class FunctionalityPage{
  int loveNumber = Random().nextInt(100) + 1;

String displayLoveScore(){
  return loveNumber.toString();
}

  String displayLoveVerdict (){
    if (loveNumber >= 75){
      return 'Super Compatible';
    } else if (loveNumber >= 60){
      return 'Highly Compatible';
    } else if (loveNumber >= 50){
      return 'Compatible';
    } else if (loveNumber >= 40){
      return 'Slightly Compatible';
    } else {
      return 'Incompatible';
    }
  }


String displayLoveComment (){
  if (loveNumber >= 75){
    return 'You were made for each other.';
  } else if (loveNumber >= 60){
    return 'Cheers to many years of sharing your love.';
  } else if (loveNumber >= 50){
    return 'Be bold, take the bull by the horns.';
  } else if (loveNumber >= 40){
    return 'You have a chance to make it with them.';
  } else {
    return 'Maybe you should think about letting go and moving on.';
  }
}




}