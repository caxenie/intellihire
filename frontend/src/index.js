import React, {
  Component
} from 'react'
import ReactDOM from 'react-dom'
import SurveyStore from './stores/SurveyStore'
import answerQuestion from './actions/answerQuestion'
import sendSurvey from './actions/sendSurvey'
import Question from './components/Question'


function getState(){
  return {
    question: SurveyStore.getCurrentQuestion(),
    hasUnansweredQuestions: SurveyStore.hasUnansweredQuestions()
  }
}

class Hello extends Component {
  constructor(props){
    super(props)
    this.state = getState()
  }
  componentDidMount() {
    this._hndl = SurveyStore.addChangeListener(this.onChange.bind(this))
  }
  componentWillUnmount() {
    this._hndl()
  }
  render() {
    if (!this.state.question){
      return (
        <div>
          Loading...
        </div>
      )
    }
    return (
      <div className="container">
        <div className="">
          <Question text={this.state.question.text} answers={[1,2,3]} onSelect={(answer) => {
            if (this.state.hasUnansweredQuestions){
              answerQuestion(answer)
            } else {
              sendSurvey()
            }
          }} />
        </div>
      </div>
    )
  }
  onChange() {
    this.setState(getState())
  }
}

ReactDOM.render(<Hello/>, document.getElementById('content'))
