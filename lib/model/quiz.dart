import 'package:wordy/model/wordy_app.dart';
import 'package:wordy/model/language.dart';
import 'package:wordy/model/quiz_question.dart';

class Quiz {

  List<QuizQuestion> questions;
  Language language;
  DateTime date;

  Quiz(this.questions, this.language, this.date) {
    // add itself to the language
    WordyApp.wordyApp.addQuiz(this);
    language.addQuiz(this);
  }

  void deleteQuestions() {
    // remove each question and any references to them so they may be garbage collected
    for (QuizQuestion question in questions) {
      question.delete();
    }
    // this allow the quiz to be cleared from a language
  }

  void delete() {
    // delete this quiz from history
    language.removeQuiz(this);
  }

  bool removeQuestion(QuizQuestion question) {
    return questions.remove(question);
  }

  void addQuestion(QuizQuestion question) {
    questions.add(question);
  }

}