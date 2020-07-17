import 'QuestionAnswerClass.dart';
import 'dart:math';
class QuestionBank2{
  int _questionNumber=0;
  List<QuestionAnswerClass> _questionBank2=[
    QuestionAnswerClass(question: "Who was the first Indian to win the Booker Prize?",ans1: "Dhan Gopal Mukerji",ans2: "Nirad C. Chaudhuri",ans3: "Arundhati Roy",ans4: "Aravind Adiga",correctAns: "Arundhati Roy"),
    QuestionAnswerClass(question: "Nobel prize is awarded for which of the following disciplines:",ans1: "Literature, peace and economics",ans2: "Medicine or Physiology",ans3: "Chemistry and Physics",ans4: "All the above",correctAns: "All the above"),
    QuestionAnswerClass(question: "Entomology studies what?",ans1: "Behavior of human beings",ans2: "Insects",ans3: "The origin and history of technical and scientific terms",ans4: "The formation of rocks",correctAns: "Insects"),
    QuestionAnswerClass(question: "Garampani Sanctuary is locate in which of the following places:",ans1: "Junagarh, Gujarat",ans2: "Kohima, Nagaland",ans3: "Diphu, Assam",ans4: "Gangtok, Sikkim",correctAns: "Diphu, Assam"),
    QuestionAnswerClass(question: "Galileo was an astronomer who",ans1: "developed the telescope",ans2: "discovered four satellites of Jupiter",ans3: "discovered that the movement of pendulum produces a regular time measurement",ans4: "All of the above",correctAns: "discovered four satellites of Jupiter"),
    QuestionAnswerClass(question: " Sun exposure can bring about an improvement in health because of which of the following reasons:",ans1: "the infrared light kills bacteria in the body",ans2: "resistance power increases",ans3: "the pigment cells in the skin get stimulated and produce a healthy tan",ans4: "the ultraviolet rays convert skin oil into Vitamin D",correctAns: "the ultraviolet rays convert skin oil into Vitamin D"),
    QuestionAnswerClass(question: "Who is the father of geometry?",ans1: "Euclid",ans2: "Aristotle",ans3: "Kepler",ans4: "Pythagoras",correctAns: "Euclid"),
    QuestionAnswerClass(question: "Indian player Jude Felix is popular for which sports?",ans1: "Volleyball",ans2: "Football",ans3: "Hockey",ans4: "Tennis",correctAns: "Hockey"),
    QuestionAnswerClass(question: "The Indian, who holds the pride of beating the computers in mathematical wizard is:",ans1: "Shakuntala Devi",ans2: "Raja Ramanna",ans3: "Ramanujam",ans4: "Rina Panigrahi",correctAns: "Shakuntala Devi"),
    QuestionAnswerClass(question: "Who is popularly called as the Iron Man of India?",ans1: "Subhash Chandra Bose",ans2: "Sardar Vallabhbhai Patel",ans3: "Jawaharlal Nehru",ans4: "Govind Ballabh Pant",correctAns: "Sardar Vallabhbhai Patel"),
    QuestionAnswerClass(question: "Guru Gopi Krishna is popular for which form of Indian dance?",ans1: "Bharatanatyam",ans2: "Kuchipudi",ans3: "Kathak",ans4: "Manipuri",correctAns: "Kuchipudi"),
    QuestionAnswerClass(question: "The radioactive element radium was invented by which of the following scientists?",ans1: "Marie Curie",ans2: "Benjamin Franklin",ans3: "Albert Einstein",ans4: "Isaac Newton",correctAns: "Marie Curie"),
    QuestionAnswerClass(question: " J.B. Dunlop is popular for which of the following inventions?",ans1: "Model airplanes",ans2: "Pneumatic rubber tire",ans3: "Rubber boot",ans4: "Automobile wheel rim",correctAns: "Pneumatic rubber tire"),
    QuestionAnswerClass(question: "The most popular invention that is used in our day-to-day life called ballpoint pen was invented by which of the following scientists:",ans1: "Waterman brothers",ans2: "Write brothers",ans3: "Biro brothers",ans4: "Bicc brothers",correctAns: "Biro brothers"),
    QuestionAnswerClass(question: "Which of the following items was introduced by James Watt?",ans1: "Hot air balloon",ans2: "Steam boat",ans3: "Diving bell",ans4: "Rotary Steam Engine",correctAns: "Rotary Steam Engine"),
    QuestionAnswerClass(question: "When was telephone invented?",ans1: "1870s",ans2:"1880s",ans3: "1850s",ans4: "1860s",correctAns: "1870s"),
    QuestionAnswerClass(question: "In which field is the B.C. Roy Award given?",ans1: "Environment",ans2: "Medicine",ans3: "Music",ans4: "Journalism",correctAns: "Medicine"),
    QuestionAnswerClass(question: "In which year was the Pulitzer Award Introduced?",ans1: "1829",ans2: "1918",ans3: "1822",ans4: "1917",correctAns: "1917"),
    QuestionAnswerClass(question: "The esteemed Ramon Magsaysay Award was given to Ms. Kiran Bedi for her contribution to which of the following fields:",ans1: "Government service",ans2: "Community Service",ans3: "Literature",ans4: "Journalism",correctAns: "Government service"),
    QuestionAnswerClass(question: "Who among the following people received the Bharat Ratna Award before becoming the President of India?",ans1: "Dr. Rajendra Prasad",ans2:"R. Venkatraman",ans3: "V.V. Giri",ans4: "Dr. Zakir Hussain",correctAns: "Dr. Zakir Hussain"),
    QuestionAnswerClass(question: "In memory of which of the following people is the Manav Seva Award given:",ans1: "Dr. Rajendra Prasad",ans2:"Indira Gandhi",ans3: "Rajiv Gandhi",ans4: "Acharya",correctAns: "Rajiv Gandhi"),
    QuestionAnswerClass(question: "Who authored the ‘Forbidden Verses’?",ans1: "D.H. Lawrence",ans2:"Salman RushDie",ans3: "Ms. Taslima Nasrin",ans4: "Abu Nuwas",correctAns: "Abu Nuwas"),
    QuestionAnswerClass(question: " Vikram Seth wrote, which of the following books?",ans1: "A Suitable Boy",ans2:"Islamic Bomb",ans3: "My God Died Young",ans4: "Look Back in Anger",correctAns: "A Suitable Boy"),
    QuestionAnswerClass(question: "Which of the following is NOT written by Munshi Premchand?",ans1: "Gaban",ans2:"Guide",ans3: "Godan",ans4: "Manasorovar",correctAns: "Guide"),
    QuestionAnswerClass(question: "The autobiography of Lady Mountbatten is",ans1: "Edwina Mountbatten – Her relationship with Nehru",ans2:"Mountbatten",ans3: "Edwina Mountbatten – A Life of Her Own",ans4: "Edwina Mountbattten",correctAns: "Edwina Mountbatten – A Life of Her Own"),
    QuestionAnswerClass(question: " ‘Reminiscences of the Nehru Age' is a book written by?",ans1: "C.D. Deshmukh",ans2: "Dr. P.C. Alexander",ans3: "MO Mathai",ans4: "S.C. Rajagopalachari",correctAns: "MO Mathai"),
  ];
  int questionNumber(){
    Random r =Random();
    _questionNumber=r.nextInt(_questionBank2.length);
    return _questionNumber;
  }
  int length(){
    return _questionBank2.length;
  }

  void nextQ(){
    //   if(_questionNumber<_questionBank.length-1){
    questionNumber();
    // }
  }
  void reset()
  {
    //  if(_questionNumber == _questionBank.length-1){
    questionNumber();
    //}
  }
  String getQuestion(){
    return _questionBank2[_questionNumber].question;
  }
  String getAns1(){
    return _questionBank2[_questionNumber].ans1;
  }
  String getAns2(){
    return _questionBank2[_questionNumber].ans2;
  }
  String getAns3(){
    return _questionBank2[_questionNumber].ans3;
  }
  String getAns4(){
    return _questionBank2[_questionNumber].ans4;
  }
  String getCorrectans() {
    return _questionBank2[_questionNumber].correctAns;
  }
  bool isFinished(){
    if(_questionNumber==_questionBank2.length-1)
    {
      return true;
    }
    else{
      return false;
    }
  }
}