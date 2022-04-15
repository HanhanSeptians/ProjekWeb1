import React from 'react'
import './Dashboard.css'
import { GrStackOverflow } from "react-icons/gr";

const Dashboard = () => {
  return (
    <>
        <div>
          <div className='card'>
            <div className='subcard'>
              <div>
                <center>
                  <GrStackOverflow size={35} className='cardicon' />
                </center>
              </div>
            </div>
            <div className='textcard'>
              <div>
                <h6><b>TOTAL ASSET</b></h6>
              </div>
            </div>
          </div>
          <div className='card'>
            <div className='subcard'>
              <div>
                <center>
                  <GrStackOverflow size={35} className='cardicon' />
                </center>
              </div>
            </div>
            <div className='textcard'>
              <div>
                <h6><b>TOTAL ASSET</b></h6>
              </div>
            </div>
          </div>
          <div className='card'>
            <div className='subcard'>
              <div>
                <center>
                  <GrStackOverflow size={35} className='cardicon' />
                </center>
              </div>
            </div>
            <div className='textcard'>
              <div>
                <h6><b>TOTAL ASSET</b></h6>
              </div>
            </div>
          </div>
        </div>
        <div>
          <div className='card1'>
            <div className='subcard'>
                <div>
                  <center>
                    <GrStackOverflow size={35} className='cardicon' />
                  </center>
              </div>
            </div>
            <div className='textcard'>
              <div>
                <h6><b>TOTAL ASSET BANDUNG</b></h6>
              </div>
            </div>
          </div>  

          <div className='card1'>
            <div className='subcard'>
                <div>
                  <center>
                    <GrStackOverflow size={35} className='cardicon' />
                  </center>
              </div>
            </div>
            <div className='textcard'>
              <div>
                <h6><b>TOTAL ASSET JAKARTA</b></h6>
              </div>
            </div>
          </div>

          <div className='card1'>
            <div className='subcard'>
                <div>
                  <center>
                    <GrStackOverflow size={35} className='cardicon' />
                  </center>
              </div>
            </div>
            <div className='textcard'>
              <div>
                <h6><b>TOTAL ASSET SURABAYA</b></h6>
              </div>
            </div>
          </div>
          
        </div>

      </>
  )
}

export default Dashboard
