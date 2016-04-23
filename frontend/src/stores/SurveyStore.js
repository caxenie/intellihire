import Dispatcher from '../Dispatcher'
//import AppConstants = from '../constants/AppConstants'
const EventEmitter = require('events').EventEmitter
import questions from './questions'
import sendSurvey from '../utils/sendSurvey'

const SurveyStore = module.exports = {}

var results = null


// // Accessors

SurveyStore.getQuestion = function(id){
  return questions.find(q => q.id == id)
}

SurveyStore.getQuestions = function(){
  return questions
}

SurveyStore.getAnswers = function(){
  return questions.map((question) => question.answer )
}

SurveyStore.getResults = function(){
  return results
}

SurveyStore.isFinalQuestion = function(id){
  return questions[questions.lenght - 1].id == id
}


// // Emitting Change Events

var eventEmitter = new EventEmitter()
var CHANGE_EVENT = 'change'

function emitChangeEvent(){
  eventEmitter.emit(CHANGE_EVENT)
}

SurveyStore.addChangeListener = function(callback){
  return eventEmitter.on(CHANGE_EVENT, callback)
}

SurveyStore.removeChangeListener = function(callback){
  return eventEmitter.removeListener(CHANGE_EVENT, callback)
}


// // RESPONDING TO ACTIONS

Dispatcher.register(function(action){
  switch (action.type) {
    case 'ANSWER_QUESTION':
      questions.forEach((question) => {
        if (action.questionId == question.id){
          question.answer = question.answers.find((answer) => answer.id == action.answerId)
        }
      })
      /*if (!SurveyStore.getCurrentQuestion()){
        let answers = SurveyStore.getAnswers().map(a => a.id)
        sendSurvey(answers).then(function(response){
          results = response
          emitChangeEvent()
        })
      }*/
      emitChangeEvent()
      break
    default:
      break
  }
})
