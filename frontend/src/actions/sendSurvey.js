import request from 'superagent'
import SurveyStore from '../stores/SurveyStore'


module.exports = function(answers) {
  let data = {
    answers: SurveyStore.getAnswers()
  }

  request
    .post('./')
    .send(data)
    .set('Accept', 'application/json')
    .end(function(error, result){
      console.log(error, result)
    })
}
