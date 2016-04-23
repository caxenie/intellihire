import React, {
  Component
} from 'react'
import ReactDOM from 'react-dom'
import SurveyStore from '../stores/SurveyStore'
import answerQuestion from '../actions/answerQuestion'
import Question from './Question'

function getState(){
  return {
    question: SurveyStore.getCurrentQuestion(),
    pagination: SurveyStore.getQuestionsPaginationInfo()
  }
}


export default class Hello extends Component {
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
    return (
      <div>
        <Question question={this.state.question} onSelect={(answer) => {
            answerQuestion(this.state.question, answer)
        }} />
        {this.renderNavigation()}
      </div>
    )
  }
  renderNavigation() {
    let {current, total} = this.state.pagination
    return (
      <div>
        <div>Question {current} of {total}</div>
      </div>
    )
  }
  onChange() {
    this.setState(getState())
  }
}
