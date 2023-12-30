import React from "react"
import { BrowserRouter, Routes, Route} from "react-router-dom"
import Login from "./Components/Login/Login"
import Dashboard from "./Components/Navbar/Dashboard"

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<Login />}></Route>
        <Route path='/Dashboard' element={<Dashboard />}></Route>
      </Routes>
    </BrowserRouter>
  )
}

export default App;
