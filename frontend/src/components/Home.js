import React, { PropTypes } from 'react'
import ReactDOM from 'react-dom'
import { Link } from 'react-router'


const Home = ({onStart, onDemo}) => {
  return (
    <div>
      <p>Welcome to our bla bla bla...</p>
      <Link to="demo">View Demo!</Link>
      <Link to="classification">Get Started!</Link>
    </div>
  )
}

module.exports = Home
