import React from 'react'
import './Dashboard.css'
import { GrStackOverflow } from "react-icons/gr";

const Dashboard = () => {
  let total = 100, baru = 20, hapus = 10;
  let assetbandung = 35, assetjakarta = 35, assetsurabaya = 30; 
  return (
    <>
        <div>
          <div className='card'>
            <div className='subcard'>
              <div className='cardicon'>
                  <GrStackOverflow size={35} />
              </div>
            </div>
            <div className='textcard'>
              <div className='text'>
                <b>TOTAL ASSET</b>
                <h2><b>{total}</b></h2>
              </div>
            </div>
          </div>
          <div className='card'>
            <div className='subcard'>
              <div className='cardicon'>
                  <GrStackOverflow size={35} />
              </div>
            </div>
            <div className='textcard'>
              <div className='text'>
                <b>TOTAL ASSET BARU</b>
                <h2><b>{baru}</b></h2>
              </div>
            </div>
          </div>
          <div className='card'>
            <div className='subcard'>
              <div className='cardicon'>
                  <GrStackOverflow size={35} />
              </div>
            </div>
            <div className='textcard'>
              <div className='text'>
                <b>TOTAL ASSET DIHAPUS</b>
                <h2><b>{hapus}</b></h2>
              </div>
            </div>
          </div>
        </div>
        <div>
          <div className='card1'>
          <div className='subcard'>
              <div className='cardicon'>
                  <GrStackOverflow size={35} />
              </div>
            </div>
            <div className='textcard'>
              <div className='text'>
                <b>TOTAL ASSET BANDUNG</b>
                <h2><b>{assetbandung}</b></h2>
              </div>
            </div>
          </div>  

          <div className='card1'>
          <div className='subcard'>
              <div className='cardicon'>
                  <GrStackOverflow size={35} />
              </div>
            </div>
            <div className='textcard'>
              <div className='text'>
                <b>TOTAL ASSET JAKARTA</b>
                <h2><b>{assetjakarta}</b></h2>
              </div>
            </div>
          </div>

          <div className='card1'>
          <div className='subcard'>
              <div className='cardicon'>
                  <GrStackOverflow size={35} />
              </div>
            </div>
            <div className='textcard'>
              <div className='text'>
                <b>TOTAL ASSET SURABAYA</b>
                <h2><b>{assetsurabaya}</b></h2>
              </div>
            </div>
          </div>
          
        </div>

      </>
  )
}

export default Dashboard
