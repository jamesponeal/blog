function Quiz(){
  this.questions = [];
  this.questionIndex = 0;
  this.score = 0;
}

Quiz.prototype.add = function(question){
  this.questions.push(question);
}

Quiz.prototype.next = function(){
  this.questionIndex += 1;
}

Quiz.prototype.shuffle = function(array){
  var j, x, i;
  for (i = array.length; i; i -= 1) {
      j = Math.floor(Math.random() * i);
      x = array[i - 1];
      array[i - 1] = array[j];
      array[j] = x;
  }
  return array;
}

Quiz.prototype.currentQuestion = function(){
  var currentQuestion = this.questions[this.questionIndex];
  return currentQuestion;
}

Quiz.prototype.renderQuestion = function(element){
  element.innerHTML = this.questions[this.questionIndex].question;
}

Quiz.prototype.renderChoice1 = function(element){
  element.innerHTML = this.questions[this.questionIndex].choice1;
}

Quiz.prototype.renderChoice2 = function(element){
  element.innerHTML = this.questions[this.questionIndex].choice2;
}

Quiz.prototype.renderProgress = function(element){
  element.innerHTML = "Question ";
  element.innerHTML += this.questionIndex+1;
  element.innerHTML += " of ";
  element.innerHTML += this.questions.length;
}

Quiz.prototype.checkAnswer = function(choice){
  console.log("Choice: " + choice);
  console.log("Current Question: " + this.currentQuestion().question);
  console.log("Correct Choice: " + this.currentQuestion().correctChoice);
  if(this.currentQuestion().correctChoice === choice){
    this.currentQuestion().markAsCorrect();
    this.score += 1;
  }
  console.log("Score: " + this.score);
}

Quiz.prototype.renderResults = function(){
  var resultsString = "<h2 class='headline-secondary--grouped'>Results:<br>You answered ";
  resultsString += this.score;
  resultsString += " correctly out of ";
  resultsString += this.questions.length;
  resultsString += "</h2><ul>";
  for(var i = 0; i < this.questions.length; i++){
    resultsString += "<li>";
    if(this.questions[i].answeredCorrectly === true){
      resultsString += "<u>Correct:</u> ";
    } else {
      resultsString += "<u>Incorrect:</u> ";
    }
    resultsString += this.questions[i].question;
    resultsString += "</li>";
  }
  resultsString += "</ul>";
  return resultsString;
}
