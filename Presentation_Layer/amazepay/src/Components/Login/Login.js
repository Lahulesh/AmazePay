import React, { useState } from 'react'
import axios from 'axios';

function Login() {

    const[Usernames, setName] = useState('');
    const[Passwords, setPassword] = useState('');
    const[BankCodes, setBankCode] = useState('');

    const handleUserName = (value)=>{setName(value)};
    const handlePassword = (value)=>{setPassword(value)};
    const handleBankCode = (value)=>{setBankCode(value)};

    const handleSave = ()=>{
        const data = {
            Username : Usernames,
            Password : Passwords,
            Bankcode : BankCodes
        }
        console.log(data);
        // const URL = "https://localhost:7130/Login";
        // axios.post(URL, data).then((result)=>{
        //     alert(result.data)
        // }).catch((error=>{alert(error)}))

        axios({
            method: 'post',
            headers: { 'Content-Type': 'application/json'},
            url: 'https://localhost:7130/Login',
            data: data,
          }).then(function (response) {
            console.log(response);
          });

    }
  return (
    <div className='login template d-flex justify-content-center align-items-center 200-vh bg-primary'>
        <div className='p-5 rounded bg-white'>
            <form>
                <h3>Sign IN</h3>
                <div className='mb-2'>
                    <label htmlFor='UserName'>User Name</label>
                    <input type="text" placeholder='User Name' className='form-control' id="fname" name="fname" onChange={(e) => handleUserName(e.target.value)} />
                </div>
                <div className='mb-2'>
                    <label htmlFor='Password'>Password</label>
                    <input type="password" placeholder='Password' className='form-control' id="password" name="password" onChange={(e) => handlePassword(e.target.value)} />
                </div>
                <div className='mb-2'>
                    <label htmlFor='BankCode'>Bank Code</label>
                    <input type="text" placeholder='Bank Code' className='form-control' id="bankcode" name="bankcode"  onChange={(e) => handleBankCode(e.target.value)}/>
                </div>
                <div className='d-grid'>
                    <button type="button" className='btn btn-primary' onClick={()=>handleSave()}>Click Me!</button>
                </div>
            </form>
        </div>
    </div>
  )
}

export default Login