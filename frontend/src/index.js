import React, { Component } from 'react'
import { render } from 'react-dom'
import { Router, Route, IndexRoute, Link, browserHistory } from 'react-router'
import Home from './components/Home'
import Demo from './components/Demo'
import Classification from './components/Classification'

class App extends Component {
  render(){
    return (
      <div>
        <div>IntelliHiRe</div>
        {this.props.children}
      </div>
    )
  }
}

render((
  <Router history={browserHistory}>
    <Route path="/" component={App}>
      <IndexRoute component={Home} />
      <Route path="classification" component={Classification} />
      <Route path="demo" component={Demo} />
    </Route>
  </Router>
), document.getElementById('content'))
