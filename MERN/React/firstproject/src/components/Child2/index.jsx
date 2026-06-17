import React from 'react'

const index = ({games}) => {
  return (
    <>
      <h1>List of Games</h1>
      <ul>
        {games.map((game, index) => (
          <li key={index}>{game}</li>
        ))}
      </ul>
    </>
  )
}

export default index
