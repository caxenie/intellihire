import React, {
  Component,
  PropTypes
} from 'react'
import ReactDOM from 'react-dom'
import Card from './Card'


const Question = ({text, answers, onSelect}) => {
  return (
    <Card title={text}>
      {answers.map((answer, idx) =>
        <Answer key={idx} answer={answer} onSelect={() => onSelect(answer) } />
      )}
    </Card>
  )
 }

Question.propTypes = {
  text: PropTypes.string.isRequired,
  answers: PropTypes.array.isRequired,
  onSelect: PropTypes.func
}


const Answer = (props) => {
  return (
    <a className="waves-effect waves-light btn" onClick={props.onSelect}>
      {props.answer}
    </a>
  )
}


module.exports = Question
