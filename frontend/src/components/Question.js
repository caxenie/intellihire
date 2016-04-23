import React, { Component, PropTypes } from 'react'
import ReactDOM from 'react-dom'
import SurveyStore from '../stores/SurveyStore'
import answerQuestion from '../actions/answerQuestion'

import '../styles/questionnaire.styl'


function getState(props){
  return {
    question: SurveyStore.getQuestion(props.params.questionId),
    isFinalQuestion: SurveyStore.getQuestion(props.params.questionId)
  }
}

export default class Question extends Component {
  constructor(props){
    super(props)
    this.state = getState(props)
  }
  componentDidMount() {
    this._surveyStoreListener = (e) => this.setState(getState(this.props))
    SurveyStore.addChangeListener(this._surveyStoreListener)
  }
  componentWillUnmount() {
    SurveyStore.removeChangeListener(this._surveyStoreListener)
  }
  componentWillReceiveProps(nextProps) {
    this.setState(getState(nextProps))
  }
  render() {
    let { question } = this.state
    return (
      <div className="question">
        <h2>{question.text}</h2>
        <div className="answers">
          {question.answers.map(this.renderAnswer, this)}
        </div>
      </div>
    )
  }
  renderAnswer(answer){
    let { question } = this.state
    var className = 'waves-effect waves-light btn btn-large'
    if (question.answer && answer.id == question.answer.id){
      className += ' red'
    }
    return (
      <div key={answer.id} className="answer">
        <a className={className} onClick={this.answerQuestion.bind(this)}>
          {answer.text}
        </a>
      </div>
    )
  }
  answerQuestion(answer){
    let { question, isFinalQuestion } = this.state
    answerQuestion(question, answer)
    if (!isFinalQuestion){
      this.context.router.push('questions/'+(question.id+1))
    } else {
      this.context.router.push('questions/submit')
    }
  }
}

Question.contextTypes = {
  router: React.PropTypes.object.isRequired
}
