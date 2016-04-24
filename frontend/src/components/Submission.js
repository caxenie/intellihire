import React, { Component, PropTypes } from 'react'
import ReactDOM from 'react-dom'
import { Link } from 'react-router'
import SurveyStore from '../stores/SurveyStore'
import submitQuestionnaire from '../actions/submitQuestionnaire'


import '../styles/submission.styl'

export default class Submission extends Component {
  constructor(props){
    super(props)
    this.state = {
      isFilledOut: SurveyStore.isFilledOut(),
      isSubmitting: false,
      error: null
    }
  }
  render() {
    return (
      <div className="submission">
        {this.renderContent()}
      </div>
    )
  }
  renderContent() {
    let {isFilledOut, isSubmitting, error} = this.state
    if (!!error){
      return this.renderMessage(error)
    } else if (isSubmitting){
      return this.renderMessage("Submitting...")
    } else if (!isFilledOut){
      return this.renderMessage("The form is not yet filled out completely.")
    } else {
      return (
        <a className="btn-floating btn-large waves-effect waves-light amber lighten-2 white-text"
            onClick={this.submit.bind(this)}>
          Compute
        </a>
      )
    }
  }
  renderMessage(message) {
    return (
      <h4 className="grey-text">{message}</h4>
    )
  }
  submit() {
    this.setState({ isSubmitting: true, error: null })
    submitQuestionnaire().then(
      () => {
        this.setState({ isSubmitting: false })
        this.context.router.push('results')
      },
      error => {
        console.log(error)
        this.setState({ isSubmitting: false, error: error || "Unknown error" })
      }
    )
  }
}

Submission.contextTypes = {
  router: React.PropTypes.object.isRequired
}
