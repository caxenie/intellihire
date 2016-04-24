import request from 'superagent'
import Dispatcher from '../Dispatcher'
import SurveyStore from '../stores/SurveyStore'

function getBody(answerIds){
  answerIds.push("0")
  return {
    "Inputs": {
      "input1": {
        "ColumnNames": [
          "a1",
          "a2",
          "a3",
          "a4",
          "a5",
          "ide"
        ],
        "Values": [
          answerIds
        ]
      }
    },
    "GlobalParameters": {}
  }
}

module.exports = function(){
  return new Promise((resolve, reject) => {
    let answerIds = SurveyStore.getAnswers().map(a => a.id)
    console.log('Sending...', answerIds)
    request
      .post('https://ussouthcentral.services.azureml.net/workspaces/4f5cd4796bcc49fc919ebb6fde724e0a/services/c9747cdea43a474cb77c27c129788263/execute?api-version=2.0&details=true')
      .send(getBody(answerIds))
      .set('Content-Type', 'application/json')
      .set('Accept', 'application/json')
      .set('Authorization', 'Bearer GFywvyXm+xfF//kvB5qkXVTJevXpBWaM8Xj3WnxzZTGBpETuIR+3q5nyUjSIGA1VHIzbnaLI0/yzRBD97E5ekw==')
      .end(function(error, result){
        if (!error && !!result){
          try {
            let json = JSON.parse(result.text)
            let values = json.Results.output1.value.Values[0].slice(2, 7).map(v => 1 - parseFloat(v))
            let results = {
              Tester: values[0],
              Sales: values[1],
              Architect: values[2],
              Algorithms: values[3],
              Developer: values[4]
            }
            console.log(results)
            Dispatcher.dispatch({
              type: 'RETRIEVE_RESULTS',
              results: results
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
