import React, { Component } from 'react'
import { render } from 'react-dom'
import { Router, Route, IndexRoute, Link, hashHistory } from 'react-router'
import Home from './components/Home'
import Questionnaire from './components/Questionnaire'
import Question from './components/Question'
import Submission from './components/Submission'
import Results from './components/Results'
import Demo from './components/Demo'

import './styles/main'


class App extends Component {
  render(){
    return (
      <div>
        {this.props.children}
      </div>
    )
  }
}

render((
  <Router history={hashHistory}>
    <Route path="/" component={App}>
      <IndexRoute component={Home} />
      <Route path="questions" component={Questionnaire}>
        <Route path="submit" component={Submission}/>
        <Route path=":questionId" component={Question}/>
      </Route>
      <Route path="results" component={Results} />
      <Route path="demo" component={Demo} />
    </Route>
  </Router>
), document.getElementById('content'))
