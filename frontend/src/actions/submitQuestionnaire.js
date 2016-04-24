import request from 'superagent'
import Dispatcher from '../Dispatcher'
import SurveyStore from '../stores/SurveyStore'


module.exports = function(){
  return new Promise((resolve, reject) => {
    let answers = SurveyStore.getAnswers().map(a => a.id)
    console.log('Sending...', answers)
    request
      .post('http://intellihireapp.azurewebsites.net/api/v1/compute/fake')
      .send({ input: answers })
      .set('Accept', 'application/json')
      .end(function(error, result){
        if (!error && !!result){
          try {
            Dispatcher.dispatch({
              type: 'RETRIEVE_RESULTS',
              results: JSON.parse(result.text)
            })
            resolve()
          } catch (error) {
            console.error(error)
            reject(error)
          }
        } else {
          console.error(error)
          reject(error)
        }
      })
  })
}
