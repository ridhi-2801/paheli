import 'QuestionAnswerClass.dart';
import 'dart:math';
 class QuestionBank{
   int _questionNumber=0;
   List<QuestionAnswerClass> _questionBank=[
     QuestionAnswerClass(question: " Which of the following personalities gave ‘The Laws of Heredity’? ",ans1: "Robert Hook ",ans2: "G.J. Mendel",ans3: "Charles Darwin",ans4: "William Harvey",correctAns: "G.J. Mendel"),
     QuestionAnswerClass(question: "Name the person who was also known as Deshbandhu.  ",ans1: " S. Radhakrishnan",ans2: " G.K. Gokhale",ans3: "Chittaranjan Das",ans4: "Madan Mohan Malviya",correctAns: "Chittaranjan Das"),
     QuestionAnswerClass(question: "Which of the following is NOT the language enshrined in the eighth schedule of the Indian Constitution, as the language of the state?",ans1: " Nepali",ans2: "Kashmiri",ans3: "English",ans4: "Konkani",correctAns: "English"),
     QuestionAnswerClass(question: "The capital of Uttarakhand is…. ",ans1: "Masoorie",ans2: "Dehradun",ans3: " Nainital",ans4: "None of these",correctAns: "Dehradun"),
     QuestionAnswerClass(question: "Geet Govind is a famous creation of ……",ans1: " Bana Bhatt",ans2: "Kalidas",ans3: "Jayadev",ans4: " Bharat Muni",correctAns: "Jayadev"),
     QuestionAnswerClass(question: " Which of the following represents the Finance Commissions that have been set-up so far?",ans1: "10",ans2: "11",ans3: "12",ans4: "13",correctAns: "13"),
     QuestionAnswerClass(question: "World Trade Organization came into existence in……",ans1: "1992",ans2: " 1993",ans3: "1994",ans4: "1995",correctAns: "1995"),
     QuestionAnswerClass(question: "According to the Constitution of India, which of the following is NOT one of the main organs of the Government?",ans1: " Legislature",ans2: "Bureaucracy",ans3: "Executive",ans4: "Judiciary",correctAns: "Bureaucracy"),
     QuestionAnswerClass(question: "In which year did the Cabinet Mission arrived in India?",ans1: "1942",ans2: "1943",ans3: "1945",ans4: "1946",correctAns: "1946"),
     QuestionAnswerClass(question: " Panchayati Raj comes under….",ans1: "Residual List",ans2: "Concurrency List",ans3: "State List",ans4: "Union List",correctAns: "State List"),
     QuestionAnswerClass(question: "Which of the amendments of the following constitution was responsible for deleting the right to property from the list of fundamentals rights?",ans1: " 43rd amendment",ans2: "44th amendment",ans3: " 48th amendment",ans4: " 55th amendment",correctAns: "44th amendment"),
     QuestionAnswerClass(question: "Harshcharita and KadamBari are the works of…..",ans1: " Kalhan",ans2: "Panini",ans3:"Bana Bhatta" ,ans4: "Patanjali",correctAns: "Bana Bhatta"),
     QuestionAnswerClass(question: " When did the war of Americans Independence take place?",ans1: "1770",ans2: "1772",ans3: "1774",ans4: "1776",correctAns: "1776"),
     QuestionAnswerClass(question: "  Panini was……",ans1: "a Greek philosopher",ans2: " an Indian astronomer and famous mathematician",ans3: "a Sanskrit grammarian of Vedic times",ans4: " great poet of ancient times.",correctAns: "a Sanskrit grammarian of Vedic times"),
     QuestionAnswerClass(question: "Mein Kampf is authored by…",ans1: "Karl Marx",ans2: "Adolf Hitler",ans3: "Napoleon Bonaparte",ans4: "Benito Mussolini",correctAns: "Adolf Hitler"),
     QuestionAnswerClass(question: "Which of the following is the largest and the deepest ocean of the world?",ans1: "Arctic",ans2: "Atlantic",ans3: "Pacific",ans4: "Indian",correctAns: "Pacific"),
     QuestionAnswerClass(question:  "The literacy rate of India is….",ans1: "57.86%",ans2: "61.34%",ans3: "63.98%",ans4: "65.38%",correctAns: "65.38%",),
     QuestionAnswerClass(question:  "Which Indian state has the least literacy rate?",ans1: "Bihar",ans2: "Rajasthan",ans3: "Arunachal Pradesh",ans4: "Orissa",correctAns: "Bihar"),
     QuestionAnswerClass(question:  "SAARC was formed in ……",ans1: "1982",ans2: "1984",ans3: "1985",ans4: "1986",correctAns: "1985"),
     QuestionAnswerClass(question:  "Which of the following is not a member of the European Union?",ans1: "Greece",ans2: "Finland",ans3: "Norway",ans4: "UnitedKingdom",correctAns: "Norway"),
     QuestionAnswerClass(question:  "ASEAN is headquartered at….",ans1: "Male",ans2: "Jakarta",ans3: "Kathmandu",ans4: "Kuala Lumpur",correctAns: "Jakarta"),
     QuestionAnswerClass(question:  "This river was also called as the Ganges of the South, Name the river from the given options.",ans1: " Krishna",ans2: "Godavari",ans3: "Cauvery",ans4: " None of these",correctAns: "Cauvery"),
     QuestionAnswerClass(question:  " Which Indian state is inhabited by ‘Jaintiya tribes’?",ans1: "Arunachal Pradesh",ans2: "Mizoram",ans3: "Manipur",ans4: "Meghalaya",correctAns: "Arunachal Pradesh"),
     QuestionAnswerClass(question:  "Currently who is the Chief Minister of Goa (State of India)?",ans1: "Manohar Parrikar",ans2: "Prashant Sawant",ans3: "Rajiv Gandhi",ans4: "Ashok Gahalot",correctAns:  "Prashant Sawant"),
     QuestionAnswerClass(question:  "Where is ‘Dudhsagar Waterfall’ in India?",ans1: "At the border of the Indian state of Goa and Karnataka",ans2: "in Karnataka",ans3: "in Gujarat",ans4: " in Rajasthan",correctAns: "At the border of the Indian state of Goa and Karnataka"),
     QuestionAnswerClass(question:  " In the World Boxing Championships 2017, who won India its first medal?",ans1: " Gaurav Bidhuri",ans2: "Alexzander",ans3: "Tarzan",ans4: "Mitsuda",correctAns: " Gaurav Bidhuri"),
     QuestionAnswerClass(question:  "Currently who is the Chief Minister of Assam?",ans1: "Sarbananda Sonowal (Since 2016)",ans2: " Prashant Yadav",ans3: "Rajiv Gandhi",ans4: "Ashok Gahalot",correctAns: "Sarbananda Sonowal (Since 2016)"),
     QuestionAnswerClass(question: "Who is the current President of Bharatiya Janata Party?",ans1: "Amit Shah (Indian politician from Gujarat)",ans2: " Nitin Gadkari",ans3:"Yashwant Sinha",ans4:"Narendra Modi",correctAns: "Amit Shah (Indian politician from Gujarat)"),
     QuestionAnswerClass(question: "Where is Taj Mahal Located?",ans1: "Delhi",ans2: "Agra",ans3: "Chandigarh",ans4: "Kashmir",correctAns: "Agra"),
     QuestionAnswerClass(question: "What is the height of Siachen Glacier at eastern Karakoram range in the Himalaya Mountains?",ans1: "5400 Metre",ans2: "6400 Metre",ans3: "5600 Metre",ans4: "8500 Meter",correctAns: "5400 Metre"),
     QuestionAnswerClass(question: " Who has been appointed as the new Secretary-General of Lok Sabha?",ans1: "Snehlata Shrivastava",ans2: "Janaki Devi",ans3: "Yashwant Sinha",ans4: "Jail Singh",correctAns: "Snehlata Shrivastava"),
     QuestionAnswerClass(question: " Recently US drop its most powerful non-nuclear bomb (MOAB – ‘Mother Of All Bombs’) at where?",ans1: "An ISIS positions in Afghanistan",ans2: "In Pakistan",ans3: " In Kazakhstan",ans4: "In South Korea",correctAns: "An ISIS positions in Afghanistan"),
     QuestionAnswerClass(question: "Which schemes launched for Bhim app user by PM Narendra Modi on Apr 14, 2015, Ambedkar Jayanti?",ans1: "BHIM Referral Bonus Scheme and BHIM Merchant Cashback Scheme",ans2:"Jio Money",ans3: "M-Paisa",ans4: "Real Money",correctAns: "BHIM Referral Bonus Scheme and BHIM Merchant Cashback Scheme"),
     QuestionAnswerClass(question: "In 2017 which Space Agency sends 104 satellites in a single mission?",ans1: "ISRO",ans2: "NASA",ans3: "Russian Agency",ans4: "China space Agency",correctAns: "ISRO"),
     QuestionAnswerClass(question: " What is India’s GDP growth rate in 2017-18?",ans1: "7.4%",ans2: "8.4%",ans3: "9.4%",ans4: "6.4%",correctAns: "7.4%"),
     QuestionAnswerClass(question: " When cycling federation of India was established?",ans1: "1946",ans2: "1846",ans3: "1947",ans4: "1952",correctAns: "1946"),
     QuestionAnswerClass(question: "When the movie ‘Raees’ Released in India?",ans1: "25 January 2017",ans2: "26 January 2017",ans3: "16 January 2017",ans4: "20 January 2017",correctAns:"25 January 2017" ),
     QuestionAnswerClass(question: "When India’s first cricket club was established?",ans1: "1792 In Calcutta",ans2: "1793 in Delhi",ans3: "1892 in Calcutta",ans4: "1992 in Delhi",correctAns: "1792 In Calcutta"),
     QuestionAnswerClass(question: "When India national football team was established?",ans1: "1937",ans2:"1938",ans3: "1940",ans4: "1952",correctAns: "1937"),
     QuestionAnswerClass(question: "Who is the Chief Minister of Arunachal Pradesh (India State)?",ans1: "Pema Khandu (Since July 2016)",ans2: "Prashant Yadav",ans3: "Rajiv Gandhi",ans4: "Ashok Gahalot",correctAns: "Pema Khandu (Since July 2016)"),
     QuestionAnswerClass(question: " Which bank changed its names and IFSC code for its many branches?",ans1: "SBI",ans2: "Canara Bank",ans3: "Axis Bank",ans4: "Punjab National Bank",correctAns: "SBI"),
    // QuestionAnswerClass(question: "What is the use of ‘India Quake’ App which is launched by the Indian Government in 2017?",ans1: "For the dissemination of earthquake parameters to the user community in a timely manner for their safety",ans2: "For Flood",ans3: " For Tsunami",ans4:"For Natural disaster",correctAns: "For the dissemination of earthquake parameters to the user community in a timely manner for their safety"),
     QuestionAnswerClass(question: "The first speaker of Lok Sabha was……",ans1: "K.M. Munshi",ans2: "C.D. Deshmukh",ans3: "G.V. Mavalankar",ans4: "H.J. Kania",correctAns: "C.D. Deshmukh"),
     QuestionAnswerClass(question: " Which of the following represents the number of nations of the Non-Aligned Movement?",ans1: "54",ans2: "75",ans3: "93",ans4: "118",correctAns: "118"),
     QuestionAnswerClass(question: "This personality is known as the Father of Economics. Can you identify him from the given options?",ans1: "J.M. Keynes",ans2: "Adam Smith",ans3: "Abraham Maslow",ans4: "J.K. Galbraith",correctAns: "Adam Smith"),
     QuestionAnswerClass(question: "Mount Etna is a famous volcano located in ….",ans1: "Argentina",ans2: "Italy",ans3: "Mexico",ans4: "Philipines",correctAns: "Italy"),
     QuestionAnswerClass(question: "Where is the Tungabhadra sanctuary located?",ans1: "Madhya Pradesh",ans2: "Uttar Pradesh",ans3: "Karnataka",ans4: "West Bengal",correctAns: "Karnataka"),
     QuestionAnswerClass(question: "The agency of the United Nations that was set up to strengthen international cooperation in the field of education and improve the standards of education is…..",ans1: "UNEP",ans2: "UNCTAD",ans3: "UNESCO",ans4: "UNDP",correctAns: "UNESCO"),
     QuestionAnswerClass(question: " Reserve Bank of India is headquartered at…..",ans1: "Kolkata",ans2: "New Delhi",ans3:"Mumbai",ans4: "Chennai",correctAns: "Mumbai"),
     QuestionAnswerClass(question: "Jana Gana Mana, was accepted as the National Anthem of India by the Constituent Assembly of India in which of the following years?",ans1: "1950",ans2: "1949",ans3: "1948",ans4:"1947",correctAns: "1950"),
   ];
   int questionNumber(){
       Random r =Random();
       _questionNumber=r.nextInt(_questionBank.length);
       return _questionNumber;
   }
   int length(){
     return _questionBank.length;
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
      return _questionBank[_questionNumber].question;
   }
   String getAns1(){
      return _questionBank[_questionNumber].ans1;
   }
   String getAns2(){
     return _questionBank[_questionNumber].ans2;
   }
   String getAns3(){
     return _questionBank[_questionNumber].ans3;
   }
   String getAns4(){
     return _questionBank[_questionNumber].ans4;
   }
   String getCorrectans() {
     return _questionBank[_questionNumber].correctAns;
   }
   bool isFinished(){
     if(_questionNumber==_questionBank.length-1)
     {
       return true;
     }
     else{
       return false;
     }
   }
 }