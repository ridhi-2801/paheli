import 'QuestionAnswerClass.dart';
import 'dart:math';
class QuestionBank1{
  int _questionNumber=0;
  List<QuestionAnswerClass> _questionBank1=[
    QuestionAnswerClass(question: " Name the currency used in Japan ",ans1: "Taka",ans2: "Yen",ans3: "Dinar",ans4: "Ngultrum",correctAns: "Yen"),
    QuestionAnswerClass(question: "Which colors must be mixed together to make green?",ans1: "Orange and blue",ans2: "Red and Blue",ans3: "Blue and Yellow",ans4: "Black and yellow",correctAns: "Blue and Yellow"),
    QuestionAnswerClass(question: "In which country is the Leaning Tower of Pisa located?",ans1: "England",ans2: "Spain",ans3: "France",ans4: "Italy",correctAns: "Italy"),
    QuestionAnswerClass(question: "What is the day after Christmas commonly known as?",ans1: "Caroling Day",ans2: "Boxing Day",ans3: "Shopping Day",ans4: "Prayer Day",correctAns: "Boxing Day"),
    QuestionAnswerClass(question: "Name the fictional city Batman calls home",ans1: "Star City",ans2: "Metropolis",ans3: "Gotham",ans4: "Springfield",correctAns: "Gotham"),
    QuestionAnswerClass(question: "Who wrote Hamlet?",ans1: "Walt Whitman",ans2: "Leonardo Da Vinci",ans3: "William Shakespeare",ans4: "Franz Kafka",correctAns: "William Shakespeare"),
    QuestionAnswerClass(question: " Into which sea does the Nile flow?",ans1: "Red Sea",ans2: "Mediterranean",ans3: "North Sea",ans4: "Caspian",correctAns: "Mediterranean"),
    QuestionAnswerClass(question: "In American currency 10 cents make a what?",ans1: "Dime",ans2: "Yen",ans3: "Taka",ans4: "Dollar",correctAns: "Dime"),
    QuestionAnswerClass(question: " Afrikaans was developed from which European language?",ans1: "Dutch",ans2: "Greek",ans3: "English",ans4: "Arabic",correctAns: "Dutch",),
    QuestionAnswerClass(question: "Where is the Railway Staff College located?",ans1: "Pune",ans2: "Allahabad",ans3: "Vadodara",ans4: "Delhi",correctAns: "Vadodara"),
    QuestionAnswerClass(question: "Which of the following is not associated with the UNO?",ans1: "ILO",ans2: "WHO",ans3: "ASEAN",ans4: "All of above",correctAns: "ASEAN"),
    QuestionAnswerClass(question: "The chairmanship/presidency of the UN Security Council rotates among the Council Members",ans1: "every 6 months",ans2: "every 3 months",ans3: "every month",ans4: "every year",correctAns: "every month"),
    QuestionAnswerClass(question: "The Indian delegation to the first World Conference on Human Rights was led by",ans1: "Dr. Manmohan Singh",ans2: "Farooq Abdullah",ans3: "Dinesh singh",ans4: "Alam Khan",correctAns: "Dr. Manmohan Singh"),
    QuestionAnswerClass(question: "The headquarters of Food and Agriculture Organisation is in",ans1: "Washington",ans2: "Rome",ans3: "Paris",ans4: "Madrid",correctAns: "Rome"),
    QuestionAnswerClass(question: "Which of the following countries is not a member of Group 15 developing countries?",ans1: "Mexico",ans2: "Malaysia",ans3: "Brazil",ans4: "Bolivia",correctAns: "Bolivia"),
    QuestionAnswerClass(question: "Which one of the following is not related to disarmament?",ans1: "SALT",ans2: "NPT",ans3: "CTBT",ans4: "NATO",correctAns: "NATO"),
    QuestionAnswerClass(question: "Which of the following describe correctly the Group of Seven Countries (G-7)?",ans1: "They are developing countries",ans2: "They are industrialised countries",ans3: "They are holding Atomic Bomb technology",ans4: "They are countries who can launch their own satellites",correctAns: "They are industrialised countries"),
    QuestionAnswerClass(question: "Central Drug Research Institute is located at",ans1: "Trissur",ans2: "Nagpur",ans3: "Mysore",ans4: "Lucknow",correctAns: "Lucknow"),
    QuestionAnswerClass(question: "National School of Mines is located in ?",ans1: "Dhanbad",ans2: "Kavalpur",ans3: "Udaipur",ans4: "Hyderabad",correctAns: "Dhanbad"),
    QuestionAnswerClass(question: "Sanchi Stupa is located near",ans1: "Gaya",ans2: "Bhopal",ans3: "Varanasi",ans4: "Bijapur",correctAns: "Bhopal"),
    QuestionAnswerClass(question: "Where is the 'National Remote Sensing Agency' situated?",ans1: "Shadnagar",ans2: "Banglore",ans3: "Chennai",ans4: "Dehradun",correctAns: "Shadnagar"),
    QuestionAnswerClass(question: "Badrinath is situated on the bank of river",ans1: "Ganga",ans2: "Yamuna",ans3: "Alaknanda",ans4: "Saraswathi",correctAns: "Alaknanda"),
    QuestionAnswerClass(question: "Who wrote the famous book - 'We the people'?",ans1: "T.N.Kaul",ans2: "J.R.D. Tata",ans3: "Khushwant Singh",ans4: "Nani Palkhivala",correctAns: "Nani Palkhivala"),
    QuestionAnswerClass(question: "Who is the author of the book 'Nineteen Eighty Four'?",ans1: "	Thomas Hardy",ans2: "Emile Zola",ans3: "George Orwell",ans4: "Walter Scott",correctAns: "George Orwell"),
    QuestionAnswerClass(question: "Who is the author of the book 'Forbidden Verses'?",ans1: "Salman RushDie",ans2: "Abu Nuwas",ans3: "Ms. Taslima Nasrin",ans4: "D.H. Lawrence",correctAns: "Abu Nuwas"),
    QuestionAnswerClass(question: "The lead character in the film 'The Bandit Queen' has been played by",ans1: "Rupa Ganguly",ans2: "Seema Biswas",ans3: "Seema Biswas",ans4: "Shabama Azmi",correctAns: "Seema Biswas"),
    QuestionAnswerClass(question: "Which of the following books has been written by Vikram Seth?",ans1: "My God Died Young",ans2: "Islamic Bomb",ans3: "Look Back in Anger",ans4: "A Suitable Boy",correctAns: "A Suitable Boy"),
    QuestionAnswerClass(question: "Who wrote the line: ' A thing of beauty is a joy forever'?",ans1: "John Keats",ans2: "Robert Browing",ans3: "P.B.Shelley",ans4: "William Wordsworth",correctAns: "John Keats"),
    QuestionAnswerClass(question: "Who is the author of the book 'Freedom Behind Bars'?",ans1: "Kiran Bedi",ans2: "Jawaharlal Nahru",ans3: "Sheikh Abdullah",ans4: "Nelson Mandela",correctAns: "Kiran Bedi"),
    QuestionAnswerClass(question: "Which of the following Newspapers are published in Bengali Language?",ans1: "Lok Satta",ans2: "Pratap",ans3: "Din Mani",ans4: "Jugantar",correctAns: "Jugantar"),
    QuestionAnswerClass(question: "Who is the author of the novel 'Les Miserable'?",ans1: "Victor Hugo",ans2:"ALium tofler",ans3: "G.Wynn",ans4:"Fedric",correctAns: "Victor Hugo"),
    QuestionAnswerClass(question: "David Copperfield is the name of",ans1: "Novel",ans2: "Famous actor",ans3: "Poem",ans4: "Writer",correctAns: "Novel"),
    QuestionAnswerClass(question: "20th August is celebrated as",ans1: "Earth Day",ans2: "Sadbhavana Divas",ans3: "No Tobacco Day",ans4: "None of this",correctAns: "Sadbhavana Divas"),
    QuestionAnswerClass(question: "Which of the following festivals is celebrated on Prophet Mohammed birthday?",ans1: "Id-Ul-Zuha",ans2: "Id-e-Milad",ans3: "Id-Ul-Fitr",ans4: "Muharram",correctAns: "Id-e-Milad"),
    QuestionAnswerClass(question: "Rosh Hashanah' is the new year's day of which communities?",ans1: "Jews",ans2: "Muslims",ans3: "Hindu",ans4: "Shinto",correctAns: "Jews"),
    QuestionAnswerClass(question: "The Battle of Plassey was fought in",ans1: "1757",ans2: "1782",ans3: "1748",ans4: "1762",correctAns: "1757"),
    QuestionAnswerClass(question: "Tripitakas are sacred books of",ans1: "Buddhists",ans2: "Hindus",ans3: "Jains",ans4: "None of above",correctAns: "Buddhists"),
    QuestionAnswerClass(question: "The trident-shaped symbol of Buddhism does not represent",ans1: "Nirvana",ans2: "Sangha",ans3: "Buddha",ans4: "Dhamma",correctAns: "Nirvana"),
    QuestionAnswerClass(question: "Which of the following is a non metal that remains liquid at room temperature?",ans1: "Phosphorous",ans2: "Bromine",ans3: "Chlorine",ans4: "Helium",correctAns: "Bromine"),
    QuestionAnswerClass(question: "Chlorophyll is a naturally occurring chelate compound in which central metal is",ans1: "Iron",ans2: "Copper",ans3: "Calcium",ans4: "magnesium",correctAns: "magnesium"),
    QuestionAnswerClass(question: "Which of the following metals forms an amalgam with other metals?",ans1: "Tin",ans2: "Mercury",ans3: "Lead",ans4: "Zinc",correctAns: "Mercury"),
    QuestionAnswerClass(question: "The group of metals Fe, Co, Ni may best called as",ans1: "transition metals",ans2: "Main Group Metals",ans3: "alkali metals",ans4: "rare metals",correctAns: "transition metals"),
    QuestionAnswerClass(question: "In which year was Pulitzer Prize established?",ans1: "1917",ans2: "1918",ans3: "1919",ans4: "1920",correctAns: "1917"),
    QuestionAnswerClass(question: "Gandhi Peace Prize for the year 2000 was awarded to the former President of South Africa along with",ans1: "Sathish Dawan",ans2: "C. Subramanian",ans3: "Grameen Bank of Bangladesh",ans4: "	World Health Organisation",correctAns: 	"Grameen Bank of Bangladesh"),
    QuestionAnswerClass(question: "The prestigious Ramon Magsaysay Award was conferred was conferred upon Ms. Kiran Bedi for her excellent contribution to which of the following fields?",ans1: "Literature",ans2: "Community Welfare",ans3: "Government Service",ans4: "Journalism",correctAns: "Government Service"),
    QuestionAnswerClass(question: "Which of the following societies has instituted an award for an outstanding parliamentarian?",ans1: "Jamanlal Bajaj Foundation",ans2: "Institute of Constitutional and Parliamentary Studies",ans3: "G. B. Pant Memorial Society",ans4: "R. D. Birla samara Kosh",correctAns: "G. B. Pant Memorial Society"),
    QuestionAnswerClass(question: "'.MOV' extension refers usually to what kind of file?",ans1: "Image",ans2: "Animation/movie file",ans3: "Audio",ans4: "Ms Office Document",correctAns: "Animation/movie file"),
    QuestionAnswerClass(question: "'.BAK' extension refers usually to what kind of file?",ans1: "Backup File",ans2: "Audio file",ans3: "Animation/movie file",ans4: "MS Encarta document",correctAns: "Backup File"),
    QuestionAnswerClass(question: "Where is the headquarters of Intel located?",ans1: "Redmond, Washington",ans2: "Tucson, Arizona",ans3: "Santa Clara, California",ans4: "Richmond, Virginia",correctAns: "Santa Clara, California"),
    QuestionAnswerClass(question: "Who co-created the UNIX operating system in 1969 with Dennis Ritchie?",ans1: "Bjarne Stroustrup",ans2: "Steve Wozniak",ans3: "Ken Thompson",ans4: "Niklaus Wirth",correctAns: "Ken Thompson")
  ];
  int questionNumber(){
    Random r =Random();
    _questionNumber=r.nextInt(_questionBank1.length);
    return _questionNumber;
  }
  int length(){
    return _questionBank1.length;
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
    return _questionBank1[_questionNumber].question;
  }
  String getAns1(){
    return _questionBank1[_questionNumber].ans1;
  }
  String getAns2(){
    return _questionBank1[_questionNumber].ans2;
  }
  String getAns3(){
    return _questionBank1[_questionNumber].ans3;
  }
  String getAns4(){
    return _questionBank1[_questionNumber].ans4;
  }
  String getCorrectans() {
    return _questionBank1[_questionNumber].correctAns;
  }
  bool isFinished(){
    if(_questionNumber==_questionBank1.length-1)
    {
      return true;
    }
    else{
      return false;
    }
  }
}