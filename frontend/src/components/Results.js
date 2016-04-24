import React, {
  Component
} from 'react'
import ReactDOM from 'react-dom'
import { Link } from 'react-router'
import SurveyStore from '../stores/SurveyStore'
import SurveyResults from './SurveyResults'


function getState(){
  return {
    results: SurveyStore.getResults()
  }
}

export default class Results extends Component {
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
    if (!!this.state.results){
      return (
        <SurveyResults results={this.state.results} />
      )
    } else {
      return (
        <div>No results. Please <Link to="/">start over</Link>.</div>
      )
    }
  }
}

Results.contextTypes = {
  router: React.PropTypes.object.isRequired
}
