import React, { Component } from 'react'
import ReactDOM from 'react-dom'
import { Bar as BarChart } from 'react-chartjs'
import { Radar as RadarChart } from 'react-chartjs'

const BAR_CHART_TYPE = 'bar'
const RADAR_CHART_TYPE = 'radar'


export default class SurveyResults extends Component {
  constructor(props){
    super(props)
    this.state = { chartType: RADAR_CHART_TYPE }
  }
  render() {
    let width = window.innerWidth * 0.9, height = width * 0.8
    switch(this.state.chartType){
      case BAR_CHART_TYPE: return (
        <div>
          <BarChart data={this.getChartData()} options={this.getChartOptions()} width={width} height={height} />
          <a className="waves-effect waves-light btn-flat" onClick={() => this.setState({ chartType: RADAR_CHART_TYPE }) }>Radar</a>
        </div>
      )
      case RADAR_CHART_TYPE: return (
        <div>
        <RadarChart data={this.getChartData()} options={this.getChartOptions()} width={width} height={height} />
          <a className="waves-effect waves-light btn-flat" onClick={() => this.setState({ chartType: BAR_CHART_TYPE }) }>Bar</a>
        </div>
      )
    }
  }
  getChartData() {
    let { results } = this.props
    let labels = [], data = []
    for (var role in results){
      if (results.hasOwnProperty(role)){
        labels.push(role)
        data.push(results[role] * 100)
      }
    }
    return {
      labels: labels,
      datasets: [{
        fillColor: "rgba(151,187,205,0.5)",
        strokeColor: "rgba(151,187,205,0.8)",
        highlightFill: "rgba(151,187,205,0.75)",
        highlightStroke: "rgba(151,187,205,1)",
        data: data
      }]
    }
  }
  getChartOptions() {
    return {
      scaleShowGridLines: false,
      scaleOverride: true,
      scaleSteps: 5,
      scaleStepWidth: 20,
      scaleStartValue: 0,
      scaleLabel: "<%=value%>%"
    }
  }
}

SurveyResults.propTypes = {
  // results...
}
