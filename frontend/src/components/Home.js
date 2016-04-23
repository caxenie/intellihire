import React, { PropTypes } from 'react'
import ReactDOM from 'react-dom'
import { Link } from 'react-router'
import Card from './Card'

const Home = ({onStart, onDemo}) => {
  return (
    <div>
      <h3>IntelliHR</h3>
      <div className="row">
        <div className="col s6 m5 l4">This questionaire... supports you to find the right spot at work...</div>
      </div>
      <div className="row">
        <Link className="waves-effect waves-light btn-flat col s4" to="demo">View Demo!</Link>
        <Link className="btn-floating btn-large waves-effect waves-light green lighten-1" to="questions/1">START</Link>
      </div>
    </div>
  )
}

module.exports = Home
