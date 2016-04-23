import React, {
  PropTypes
} from 'react'
import ReactDOM from 'react-dom'


const Landing = ({onStart}) => {
  return (
    <div>
      <p>Welcome to our bla bla bla...</p>
      <a onClick={onStart}>Get Started!</a>
    </div>
  )
 }

Landing.propTypes = {
  onStart: PropTypes.func
}


module.exports = Landing
