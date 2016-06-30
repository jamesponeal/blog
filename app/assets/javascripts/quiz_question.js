function Question(question, choice1, choice2, correctChoice){
  this.question = question;
  this.choice1 = choice1;
  this.choice2 = choice2;
  this.correctChoice = correctChoice;
  this.answeredCorrectly = false;
}

Question.prototype.markAsCorrect = function(){
  this.answeredCorrectly = true;
}