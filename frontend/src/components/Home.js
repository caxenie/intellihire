import React, { PropTypes } from 'react'
import ReactDOM from 'react-dom'
import { Link } from 'react-router'
import Card from './Card'

import '../styles/home.styl'


const Home = ({onStart, onDemo}) => {
  return (
    <div className="home amber lighten-2 white-text">
      <h1>Take the<br />Survey</h1>
      <p>This questionaire... supports you to find the right spot at work...</p>
      <Link className="demo waves-effect waves-light btn-flat" to="demo">View Demo Results</Link>
      <Link className="start btn-floating btn-large waves-effect waves-dark white black-text" to="questions/1">Go</Link>
    </div>
  )
}

module.exports = Home
