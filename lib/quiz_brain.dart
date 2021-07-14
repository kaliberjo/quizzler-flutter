import 'questions.dart';

class QuizBrain{
  int _i=0;
  List<Question> _questions=[
    Question('Suresh raina has scored most runs in IPL tournaments', false),
    Question('Lakmipathy balaji took the first hattrick in an IPL match', true),
    Question('Ben Stokes is the costliest player in the IPL auction history', false),
    Question('CSK having the highest win percentage in ipl', true),
    Question('AB de Villiers has hit more sixes in all IPL matches', false),
    Question('Lasith Malinga has taken most numbers of wickets in IPL', true),
    Question('eight finals has MS Dhoni played in the IPL for CSK', true),
    Question('RCB has never won the IPL tournament', true),
    Question('Dwayne Bravo has taken most catches in the IPL history', false),
    Question('Yusuf Pathan completed fastest fifty of IPL in 14 balls.', false),
    Question('Maximum four foreign players can play in the playing eleven of the IPL match.', true),
    Question('DK has recorded the most number of dismissals in an IPL match', false),
    Question('Highest individual score of IPL tournament is made by Chris Gayle.', true)
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
    return 0;
  }
}