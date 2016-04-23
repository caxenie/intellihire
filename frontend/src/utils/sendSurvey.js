import request from 'superagent'
import SurveyStore from '../stores/SurveyStore'


module.exports = function(answers) {
  let data = {
    answers: SurveyStore.getAnswers()
  }

  console.log('Sending...', data)

  request
    .get('http://intellihireapp.azurewebsites.net/api/v1/compute/mock')
    //.post('http://intellihireapp.azurewebsites.net/api/v1/compute/mock')
    //.send(data)
    //.set('Accept', 'application/json')
    .end(function(error, result){
      console.log(error, result)
    })
}
