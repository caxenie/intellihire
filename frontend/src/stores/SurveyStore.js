import Dispatcher from '../Dispatcher'
//import AppConstants = from '../constants/AppConstants'
const EventEmitter = require('events').EventEmitter
import questions from './questions'
import sendSurvey from '../utils/sendSurvey'

const SurveyStore = module.exports = {}

var status = 0
var results = null


// // Accessors

SurveyStore.getStatus = function(){
  return status
}

SurveyStore.getCurrentQuestion = function(){
  return questions.find((question) => !question.answer)
}

SurveyStore.getQuestionsPaginationInfo = function(){
  let currentQuestion = SurveyStore.getCurrentQuestion()
  return {
    current: questions.findIndex((question) => !question.answer) + 1,
    total: questions.length
  }
}

SurveyStore.getAnswers = function(){
  return questions.map((question) => question.answer )
}

SurveyStore.getResults = function(){
  return results
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
      if (!SurveyStore.getCurrentQuestion()){
        status = 1

        let answers = SurveyStore.getAnswers().map(a => a.id)
        sendSurvey({ input: answers }).then(function(response){
          results = response
          status = 2
          emitChangeEvent()
        })
      }
      emitChangeEvent()
      break
    default:
      break
  }
})
