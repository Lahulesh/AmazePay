import React from 'react'
import "./Reader.css";


function Readers() {


  return (
    <div className="container-fluid">
      <div className="row">
        <div className="col-md-12">
          <div className="card mb-0">
            <h5 className="card-header text-white headingColour">File Uploads</h5>
            <div className="card-body">
              <div className="row">
                <div className="col-3">
                  <h5 className="card-title">File Type</h5>
                  <select name="cars" id="cars">
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="mercedes">Mercedes</option>
                    <option value="audi">Audi</option>
                  </select>
                </div>
                <div className="col-3">
                  <div className="mb-3">
                    <label className="form-label">Default file input example</label>
                    <input className="form-control" type="file" id="formFile" />
                  </div>
                </div>
                <div className="col-3">
                  <div className="mb-3">
                    <button className="btn btn-success">Submit</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


  )
}

export default Readers