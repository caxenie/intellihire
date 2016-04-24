import Dispatcher from '../Dispatcher'
const EventEmitter = require('events').EventEmitter
import questions from './questions'

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
  return questions.map(q => q.answer).filter(a => !!a)
}

SurveyStore.isFilledOut = function(){
  return SurveyStore.getAnswers().length == questions.length
}

SurveyStore.getResults = function(){
  return results
}

SurveyStore.isFinalQuestion = function(id){
  return questions[questions.length - 1].id == id
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
      emitChangeEvent()
      break
    case 'RETRIEVE_RESULTS':
      results = action.results
      emitChangeEvent()
      break
    default:
      break
  }
})
