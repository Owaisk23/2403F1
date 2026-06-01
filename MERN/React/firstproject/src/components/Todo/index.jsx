import React from 'react'
import { useState } from 'react'

const index = () => {
  const [list, setList] = useState(["Apple", "Banana", "Mango"]);
  const [text, setText] = useState("");


    const addTodo = () => {
      if (text === "") {
          alert("Please enter a valid todo");
          return;
      }
      setList([...list, text])
      setText("")
  }

 // List ["Apple", "Banana", "Mango"]

 // List[1] = Banana
  const editTodo = (index)=>{
      const updatedValue = prompt("Edit Task", list[index])
    //   list[index] = updatedValue // bad approach
      const copyList = [...list];
      copyList[index] = updatedValue;
      setList(copyList);
  }
  const deleteTodo = (index)=>{
    //   const updatedList = [...list];
    //   updatedList.splice(index, 1);
    //   setList(updatedList);

    //   const newList = list.filter((item, i)=>  i !== index)
    //   setList(newList)

      setList(list.filter((item, i)=>  i !== index))
  }
  return (
      <div>
          <input type='text' placeholder='addTodo' value={text} onChange={(e) => setText(e.target.value)} />
          <button className='btn btn-primary' onClick={addTodo}>Add Todo</button>

          {
              list.length > 0 ?
              
              list.map((item, index) => (
                
                  <div key={index} className='d-flex justify-content-between mt-3 align-item-center'>

                      <h1>{index + 1}: {item}</h1>

                      <div>
                          <button  onClick={()=>editTodo(index)} className='btn btn-warning'>edit</button>
                          <button onClick={()=>deleteTodo(index)}  className='btn btn-danger'>delete</button>
                      </div>

                  </div>
              ))
              :
              <div>List is Empty</div>
          }
          
      </div>
  )
};

export default index
