import React, {
  Component
} from 'react'
import ReactDOM from 'react-dom'
import SurveyStore from '../stores/SurveyStore'
import { Link } from 'react-router'

import '../styles/questionnaire'


export default class Questionnaire extends Component {
  constructor(props){
    super(props)
    this.state = {
      questions: SurveyStore.getQuestions()
    }
  }
  render() {
    let { question, pagination } = this.state
    return (
      <div className="questionnaire">
        {this.props.children}
        <ul className="pagination center">
          {this.state.questions.map(this.renderPage, this)}
          {this.renderSubmitPage()}
        </ul>
      </div>
    )
  }
  renderPage(question) {
    var liClassName = "waves-effect", linkClassName = ""
    if (question.id == this.props.params.questionId){
      liClassName = "active"
    } else if (!question.answer) {
      linkClassName = "grey-text text-lighten-1"
    }
    return (
      <li key={question.id} className={liClassName}>
        <Link className={linkClassName} to={'questions/'+question.id}>{question.id}</Link>
      </li>
    )
  }
  renderSubmitPage() {
    var liClassName = "waves-effect", linkClassName = ""
    if (this.props.location.pathname == '/questions/submit'){
      liClassName = "active"
    } else {
      linkClassName = "grey-text text-lighten-1"
    }
    return (
      <li className={liClassName}>
        <Link className={linkClassName} to="questions/submit">Results</Link>
      </li>
    )
  }
}
