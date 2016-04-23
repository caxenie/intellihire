import React, {
  Component
} from 'react'
import ReactDOM from 'react-dom'
import SurveyStore from './stores/SurveyStore'
import Landing from './components/Landing'
import Questionnaire from './components/Questionnaire'

const INTRODUCTION_STEP = 0
const QUESTIONNAIRE_STEP = 1
const COMPUTING_STEP = 2
const RESULTS_STEP = 3


class Hello extends Component {
  constructor(props){
    super(props)
    this.state = {
      step: INTRODUCTION_STEP
    }
  }
  render() {
    switch(this.state.step){
      case INTRODUCTION_STEP: return(
        <Landing onStart={() =>
          this.setState({ step: QUESTIONNAIRE_STEP })
        } />
      )
      case QUESTIONNAIRE_STEP: return (
        <Questionnaire onSubmit={() =>
          this.setState({ step: COMPUTING_STEP })
        } />
      )
      case RESULTS_STEP: return (
        <div>Results</div>
      )
    }
  }
}

ReactDOM.render(<Hello/>, document.getElementById('content'))
