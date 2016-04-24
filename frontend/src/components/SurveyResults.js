import React, { Component } from 'react'
import ReactDOM from 'react-dom'
import { Bar as BarChart } from 'react-chartjs'
import { Radar as RadarChart } from 'react-chartjs'

const BAR_CHART_TYPE = 'bar'
const RADAR_CHART_TYPE = 'radar'

import '../styles/survey-results'

function getViewportWidth() {
  return Math.max(document.documentElement.clientWidth, window.innerWidth || 400)
}

export default class SurveyResults extends Component {
  constructor(props){
    super(props)
    this.state = {
      chartType: RADAR_CHART_TYPE,
      viewportWidth: getViewportWidth()
    }
  }
  componentDidMount() {
    this._resizeListener = (e) => this.setState({ viewportWidth: getViewportWidth() })
    window.addEventListener('resize', this._resizeListener)
  }
  componentWillUnmount() {
    window.removeEventListener('resize', this._resizeListener)
  }
  render() {
    return (
      <div className="survey-results amber lighten-2 z-depth-1">
        <h2 className="white-text">Results</h2>
        {this.renderChart()}
      </div>
    )
  }
  renderChart() {
    let width = 400/*this.state.viewportWidth * 0.6*/, height = width * 0.8
    switch(this.state.chartType){
      case BAR_CHART_TYPE: return (
        <div>
          <BarChart data={this.getChartData()} options={this.getChartOptions()} width={width} height={height} />
          <div className="center">
            <a className="waves-effect waves-dark btn-flat white-text" onClick={() => this.setState({ chartType: RADAR_CHART_TYPE }) }>Show as Radar-Chart</a>
          </div>
        </div>
      )
      case RADAR_CHART_TYPE: return (
        <div>
        <RadarChart data={this.getChartData()} options={this.getChartOptions()} width={width} height={height} />
          <div className="center">
            <a className="waves-effect waves-dark btn-flat white-text" onClick={() => this.setState({ chartType: BAR_CHART_TYPE }) }>Show as Bar-Chart</a>
          </div>
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
        fillColor: (this.state.chartType == RADAR_CHART_TYPE) ? "rgba(255,255,255,0.4)" : 'rgba(255,255,255,0.6)',
        strokeColor: (this.state.chartType == RADAR_CHART_TYPE) ? "rgba(255,255,255,1.0)" : 'rgba(255,255,255,0.2)',
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
      scaleLabel: "<%=value%>%",
      scaleFontColor: 'rgba(255,255,255,1.0)',
      angleLineColor : 'rgba(255,255,255,0.6)',
      pointLabelFontSize: 18,
      pointLabelFontColor: 'rgba(255,255,255,1.0)'
    }
  }
}

SurveyResults.propTypes = {
  // results...
}
