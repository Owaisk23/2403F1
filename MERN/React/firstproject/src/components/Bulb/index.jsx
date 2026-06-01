import React from 'react'
import onBulb from "../../assets/onbulb.jpg"
import offBulb from "../../assets/offbulb.jpg"
import { useState } from 'react'

const index = () => {
   const [isOn, setIsOn] = useState(true);
  return (
    <>
      <h1>Bulb {isOn ? "On" : "Off"}</h1>

      <button className="btn btn-primary" onClick={() => setIsOn(!isOn)}>
        Toggle
      </button>

      {isOn ? (
        <div className="img-container">
          <img src={onBulb} alt="" width={250} height={400} />
        </div>
      ) : (
        <div className="img-container">
          <img src={offBulb} alt="" width={250} height={400} />
        </div>
      )}
    </>
  )
}

export default index
