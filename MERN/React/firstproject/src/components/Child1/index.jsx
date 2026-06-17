import React from 'react'

const index = ({games, setgames}) => {
    let addGame = () => {
        let newGame = document.getElementById("newgame").value;
        setgames([...games, newGame]);
    }
  return (
    <>
      <input type="text" placeholder="Enter game name" id='newgame'/>
      <button className='btn btn-primary' onClick={addGame}>Add Game</button>
    </>
  )
}

export default index
