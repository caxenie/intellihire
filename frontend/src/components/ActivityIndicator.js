import React from 'react'
import ReactDOM from 'react-dom'


const ActivityIndicator = (props) => {
  return (
    <div class="preloader-wrapper small active">
      <div class="spinner-layer spinner-green-only">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>
    </div>
  )
}

module.exports = ActivityIndicator
