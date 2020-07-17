class QuestionAnswerClass{
String _question;
String _ans1;
String _ans2;
String _ans3;
String _ans4;
String _correctAns;

QuestionAnswerClass({String question,String ans1,String ans2,String ans3,String ans4,String correctAns}){
  _question=question;
  _ans1=ans1;
  _ans2=ans2;
  _ans3=ans3;
  _ans4=ans4;
  _correctAns=correctAns;
}
String get question{
  return _question;
}

String get ans1{
  return _ans1;
}

String get ans2{
  return _ans2;
}

String get ans3{
  return _ans3;
}

String get ans4{
  return _ans4;
}
String get correctAns{
  return _correctAns;
}
}