import Dispatcher from '../Dispatcher'


module.exports = function(question, answer){
  Dispatcher.dispatch({
    type: 'ANSWER_QUESTION',
    questionId: question.id,
    answerId: answer.id
  })
}
