import 'questions.dart';

class QuizBrain{
  int _i=0;
  List<Question> _questions=[
    Question(' Dogs have an appendix.', false),
    Question('Bill Gates is the founder of Amazon.', false),
    Question(' Mice have more bones than humans.', true),
    Question('A slug\'s blood is green.', true),
    Question('28 is a perfect number.', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'Lungs are the largest internal organ in the human body.',
        false),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true)
  ];
  void nextq() {
    if (_i <= _questions.length) {
      _i++;
    }
  }

  String getques(){
    return _questions[_i].questionText;
  }
  bool getans(){
    return _questions[_i].questionAnswer;
  }
  int isFinished()
  {
    if(_i == _questions.length-1)
      {
        return _i;
      }
    else {
      return -1;
    }
  }
  int reset()
  {
    if(isFinished()>0)
      {
        _i=0;
      }
  }
}