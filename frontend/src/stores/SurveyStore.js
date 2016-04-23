import Dispatcher from '../Dispatcher'
//import AppConstants = from '../constants/AppConstants'
const EventEmitter = require('events').EventEmitter
import questions from './questions'

const SurveyStore = module.exports = {}


// // ...

var questionIdx = 0

SurveyStore.getCurrentQuestion = function(){
  return questions[questionIdx]
}

SurveyStore.hasUnansweredQuestions = function(){
  return questionIdx + 1 < questions.length
}

SurveyStore.getAnswers = function(){
  return questions.map((question) => question.answer )
}


// // Emitting Change Events

var eventEmitter = new EventEmitter()
var CHANGE_EVENT = 'change'

/// Signals that an album in the store changed
function emitChangeEvent(){
  eventEmitter.emit(CHANGE_EVENT)
}

/// Starts listening for album changes in the store
SurveyStore.addChangeListener = function(callback){
  eventEmitter.on(CHANGE_EVENT, callback)
}

/// Stops listening for album changes in the store
SurveyStore.removeChangeListener = function(callback){
  eventEmitter.removeListener(CHANGE_EVENT, callback)
}


// // RESPONDING TO ACTIONS

Dispatcher.register(function(action){
  switch (action.type) {
    case 'ANSWER_QUESTION':
      // TODO: Reduce...
      questions[questionIdx].answer = action.answer
      questionIdx++
      emitChangeEvent()
      break
    default:
      break
  }
})
