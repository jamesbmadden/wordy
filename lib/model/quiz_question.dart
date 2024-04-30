import 'package:wordy/model/wordy_app.dart';
import 'package:wordy/model/quiz.dart';
import 'package:wordy/model/word.dart';

class QuizQuestion {

  Word word;
  Quiz quiz;

  late bool correct;

  QuizQuestion(this.word, this.quiz) {
    // add itself to WordyApp and Quiz
    WordyApp.wordyApp.addQuestion(this);
    quiz.addQuestion(this);
  }

  bool delete() {
    WordyApp.wordyApp.removeQuestion(this);
    word.removeQuestion(this);
    return quiz.removeQuestion(this);
  }

}