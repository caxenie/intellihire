module.exports = [
  {id: 1, text: "I spend\ntime reflecting on things."},
  {id: 2, text: "I pay\nattention to details."},
  {id: 3, text: "I don't mind being\nthe center of attention."},
  {id: 4, text: "I take\ntime out for others."},
  {id: 5, text: "I get\nstressed out easily."}
].map(function(q){
  q.answers = [
    {id: 1, text: "Disagree"},
    {id: 2, text: "Neutral"},
    {id: 3, text: "Agree"}
  ]
  return q
})
