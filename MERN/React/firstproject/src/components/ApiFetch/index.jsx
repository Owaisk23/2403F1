import React from 'react'
import { useState, useEffect } from 'react'


const index = () => {
    const [count, setCount] = useState(0);


    const getProducts = async () => {
        try {
            const response = await fetch("https://fakestoreapi.com/products");
            const data = await response.json();
            console.log(data);
        }
        catch (error) {
            console.log(error);
        }
    }

    useEffect(() => {
        getProducts();
    }, [])

  return (
    <>
      <h1>{count}</h1>
      <button onClick={() => setCount(count + 1)}>Increment</button>
    </>
  )
}

export default index
