import React, { Component } from 'react'
import ReactDOM from 'react-dom'


export default class SurveyResults extends Component {
  render() {
    return (
      <div>
        Results: { JSON.stringify(this.props.results) }
      </div>
    )
  }
}

SurveyResults.propTypes = {
  // results...
}
