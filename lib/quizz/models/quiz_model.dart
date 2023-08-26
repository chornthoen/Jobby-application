

class QuizModel {

  QuizModel({
    required this.image,
    required this.title,
    required this.level,
    required this.question,
    required this.user,
    required this.like,
    required this.percent,
    required this.isLike,
  });
  final String image;
  final String title;
  final String level;
  final String question;
  final String user;
  final String like;
  final String percent;
  bool isLike;


}
final quizModel = [
  QuizModel(
    image: 'assets/images/lightbulb.png',
    title: 'CSS Quiz',
    level: 'Easy',
    question: '10',
    like: '100',
    user: '102',
    percent: '10%',
    isLike: true,
  ),
  QuizModel(
    image: 'assets/images/balloon.png',
    title: 'UI/UX Quiz',
    level: 'Easy',
    question: '10',
    like: '100',
    user: '102',
    percent: '10%',
    isLike: false,
  ),
  QuizModel(
    image: 'assets/images/sport.png',
    title: 'JavaScript Quiz',
    level: 'Easy',
    question: '10',
    like: '100',
    user: '102',
    percent: '10%',
    isLike: false,
  ),
  QuizModel(
    image: 'assets/images/web.png',
    title: 'Laravel Quiz',
    level: 'Easy',
    question: '10',
    like: '100',
    user: '102',
    percent: '10%',
    isLike: false,
  ),
  QuizModel(
    image: 'assets/images/coin.png',
    title: 'PHP Quiz',
    level: 'Easy',
    question: '10',
    like: '100',
    user: '102',
    percent: '10%',
    isLike: false,
  ),
  QuizModel(
    image: 'assets/images/business.png',
    title: 'Flutter Quiz',
    level: 'Easy',
    question: '10',
    like: '100',
    user: '102',
    percent: '10%',
    isLike: false,
  ),
  QuizModel(
    image: 'assets/images/time_clock.png',
    title: 'PHP Quiz',
    level: 'Easy',
    question: '10',
    like: '100',
    user: '102',
    percent: '10%',
    isLike: false,
  ),
  QuizModel(
    image: 'assets/images/finance.png',
    title: 'Spring Boot Quiz',
    level: 'Easy',
    question: '10',
    like: '100',
    user: '102',
    percent: '10%',
    isLike: false,
  ),
];

class QuestionModel{

  QuestionModel({
    required this.question,
    required this.answersList,
  });
  final String question;
  final List<AnswerModel> answersList;

}

class AnswerModel{

  AnswerModel({
    required this.answerText,
    required this.isCorrect,
  });
  final String answerText;
  final bool isCorrect;
}

  List<QuestionModel> questionsList = [
    QuestionModel(
      question: 'What is the capital of France?',
      answersList: [
        AnswerModel(answerText: 'New York', isCorrect: false),
        AnswerModel(answerText: 'London', isCorrect: false),
        AnswerModel(answerText: 'Paris', isCorrect: true),
        AnswerModel(answerText: 'Dublin', isCorrect: false),
      ],
    ),
    QuestionModel(
        question: 'Who is CEO of Tesla?',
        answersList: [
          AnswerModel(answerText: 'Jeff Bezos', isCorrect: false),
          AnswerModel(answerText: 'Elon Musk', isCorrect: true),
          AnswerModel(answerText: 'Bill Gates', isCorrect: false),
          AnswerModel(answerText: 'Tony Stark', isCorrect: false),
        ],
    ),
    QuestionModel(
        question: 'The iPhone was created by which company?',
        answersList: [
          AnswerModel(answerText: 'Apple', isCorrect: true),
          AnswerModel(answerText: 'Intel', isCorrect: false),
          AnswerModel(answerText: 'Amazon', isCorrect: false),
          AnswerModel(answerText: 'Microsoft', isCorrect: false),
        ],
    ),

  ];
