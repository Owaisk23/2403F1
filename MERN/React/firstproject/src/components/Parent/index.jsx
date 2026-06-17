import React from 'react'
import { useState } from 'react'
import Child1 from '../Child1'
import Child2 from '../Child2'

const index = () => {
    let [games, setGames] =useState(["Cricket", "Football", "Hockey", "Tennis", "Badminton"]);
  return (
    <>
      {/* <h1>List of Games</h1>
      <ul>
        {games.map((game, index) => (
          <li key={index}>{game}</li>
        ))}
      </ul> */}

      <Child1 games={games} setgames={setGames} />
      <Child2 games={games} />
    </>
  )
}

export default index
