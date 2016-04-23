import React, { Component, PropTypes } from 'react'
import ReactDOM from 'react-dom'
import SurveyStore from '../stores/SurveyStore'


function getState(props){
  return {
  }
}

export default class Submission extends Component {
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
    return (
      <div className="submission">
        TODO: Submit
      </div>
    )
  }
}

Submission.contextTypes = {
  router: React.PropTypes.object.isRequired
}
