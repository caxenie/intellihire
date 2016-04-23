import React, {
  PropTypes
} from 'react'
import ReactDOM from 'react-dom'


const Card = (props) => {
  var titleElement = (!!props.title) ? (
    <div className="card-title">{props.title}</div>
  ) : null
  return (
    <div className="card">
      <div className="card-content">
        {titleElement}
        {props.children}
      </div>
    </div>
  )
}

Card.propTypes = {
  title: PropTypes.string
}

module.exports = Card
