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
      .post('https://6q261v49fe.execute-api.us-east-1.amazonaws.com/prod')
      .send(getBody(answerIds))
      .set('Content-Type', 'application/json')
      .set('Accept', 'application/json')
      .end(function(error, result){
        console.log(result.text)
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
