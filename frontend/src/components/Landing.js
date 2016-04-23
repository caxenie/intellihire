import React, {
  PropTypes
} from 'react'
import ReactDOM from 'react-dom'


const Landing = ({onStart, onDemo}) => {
  return (
    <div>
      <p>Welcome to our bla bla bla...</p>
      <a onClick={onStart}>Get Started!</a>
      <a onClick={onDemo}>View Demo!</a>
    </div>
  )
 }

Landing.propTypes = {
  onStart: PropTypes.func,
  onDemo: PropTypes.func
}


module.exports = Landing
