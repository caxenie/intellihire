import request from 'superagent'
import SurveyStore from '../stores/SurveyStore'


module.exports = function(answers) {
  console.log('Sending...', answers)

  request
    .get('http://intellihireapp.azurewebsites.net/api/v1/compute/mock')
    //.post('http://intellihireapp.azurewebsites.net/api/v1/compute/mock')
    //.send(data)
    //.set('Accept', 'application/json')
    .end(function(error, result){
      console.log(error, result)
    })
}
