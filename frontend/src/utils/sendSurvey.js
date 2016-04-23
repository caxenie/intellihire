import request from 'superagent'
import SurveyStore from '../stores/SurveyStore'


module.exports = function(answers) {
  console.log('Sending...', answers)

  return new Promise((resolve, reject) => {
    request
      .post('http://intellihireapp.azurewebsites.net/api/v1/compute/fake')
      .send({ input: answers })
      .set('Accept', 'application/json')
      .end(function(error, result){
        resolve(JSON.parse(result.text))
      })
  })

}
