import Dispatcher from '../Dispatcher'


module.exports = function(answer){
  Dispatcher.dispatch({
    type: 'ANSWER_QUESTION',
    answer: answer
  })
}
