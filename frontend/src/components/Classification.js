import React, { Component } from 'react'
import reactDom from 'react-dom'
import SurveyStore from '../stores/SurveyStore'
import Questionnaire from './Questionnaire'
import SurveyResults from './SurveyResults'

function getState(){
  return {
    surveyStatus: SurveyStore.getStatus(),
    results: SurveyStore.getResults()
  }
}

export default class Classification extends Component {
  constructor(props){
    super(props)
    this.state = getState()
  }
  componentDidMount() {
    this._surveyStoreListener = (e) => this.setState(getState())
    SurveyStore.addChangeListener(this._surveyStoreListener)
  }
  componentWillUnmount() {
    SurveyStore.removeChangeListener(this._surveyStoreListener)
  }
  render() {
    switch (this.state.surveyStatus){
      case 0: return (
        <Questionnaire onSubmit={() =>
          this.setState({ step: COMPUTING_STEP })
        } />
      )
      case 1: return (
        <div>Loading...</div>
      )
      case 2: return (
        <SurveyResults results={this.state.results} />
      )
    }
  }
}
