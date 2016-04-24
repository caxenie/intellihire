import React, {
  PropTypes
} from 'react'
import ReactDOM from 'react-dom'
import SurveyResults from './SurveyResults'

let results = {'Sales': 0.19, 'Tester': 0.43, 'Algorithms': 0.52, 'Developer': 0.87, 'Architect': 0.55}

const Demo = (props) => {
  return (
    <div>
      <SurveyResults results={results} />
    </div>
  )
 }

Demo.propTypes = {
}


module.exports = Demo
