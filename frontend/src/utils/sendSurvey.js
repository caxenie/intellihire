import request from 'superagent'
import SurveyStore from '../stores/SurveyStore'


module.exports = function(answers) {
  console.log('Sending...', answers)

  return new Promise((resolve, reject) => {
    request
      .get('http://intellihireapp.azurewebsites.net/api/v1/compute/mock')
      //.post('http://intellihireapp.azurewebsites.net/api/v1/compute/mock')
      //.send(data)
      //.set('Accept', 'application/json')
      .end(function(error, result){
        resolve({'Sales': 0.19, 'Tester': 0.43, 'Algorithms': 0.52, 'Developer': 0.87, 'Architect': 0.55})
      })
  })

}
