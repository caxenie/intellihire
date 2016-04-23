import React, {
  Component
} from 'react'
import ReactDOM from 'react-dom'
import SurveyStore from './stores/SurveyStore'
import Landing from './components/Landing'
import Demo from './components/Demo'
import Questionnaire from './components/Questionnaire'


class Hello extends Component {
  constructor(props){
    super(props)
    this.state = {
      didCompleteIntroduction: false,
      isViewingDemo: false,
      surveyStatus: SurveyStore.getStatus()
    }
  }
  componentDidMount() {
    this._hndl = SurveyStore.addChangeListener(this.onChange.bind(this))
  }
  componentWillUnmount() {
    console.log(this._hndl)
    //this._hndl()
  }
  render() {
  if (!!this.state.isViewingDemo) {
    return (
      <Demo />
    )
  } else if (!this.state.didCompleteIntroduction){
      return (
        <Landing
          onStart={() => this.setState({ didCompleteIntroduction: true }) }
          onDemo={() => this.setState({ isViewingDemo: true }) } />
      )
    } else {
      switch (this.state.surveyStatus){
        case 0: return (
          <Questionnaire onSubmit={() =>
            this.setState({ step: COMPUTING_STEP })
          } />
        )
        case 1: return (
          <div>Loading...</div>
        )
      }
    }
  }
  onChange() {
    this.setState({
      surveyStatus: SurveyStore.getStatus()
    })
  }
}

ReactDOM.render(<Hello/>, document.getElementById('content'))
