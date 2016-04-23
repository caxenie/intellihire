import React, {
  Component,
  PropTypes
} from 'react'
import ReactDOM from 'react-dom'
import Card from './Card'


const Question = ({question, onSelect}) => {
  return (
    <Card title={question.text}>
      {question.answers.map((answer, idx) =>
        <Answer key={idx} answer={answer} isSelected={!!question.answer && answer.id == question.answer.id} onSelect={() => onSelect(answer) } />
      )}
    </Card>
  )
 }

Question.propTypes = {
  question: PropTypes.object.isRequired, // TODO: shape
  onSelect: PropTypes.func
}


const Answer = ({answer, isSelected, onSelect}) => {
  var className = 'waves-effect waves-light btn'
  if (isSelected) className += ' red'
  return (
    <a className={className} onClick={onSelect}>
      {answer.text}
    </a>
  )
}


module.exports = Question
