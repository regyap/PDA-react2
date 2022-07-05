import React from 'react';
import './NavBar.css';

const NavBar = () => {
    const logo = require('../../../images/pda.png'); // with require
    return(
        <>
        <nav>

<div id="uppernav">
        
        <div id="imagediv"><a href="/home"><img id="logoo" src={logo} ></img></a></div>
</div>
            <div id="bottomnav">
             <div className="navflex">
                <a href="/about" className="aboutclass">ABOUT</a>
                </div>
            <div className="navflex">
                <a href="/Analysis" className="analysisclass">ANALYSIS</a>
                </div>
                <div className="navflex">
                <a href="/Dashboard" className="dashboardclass">DASHBOARD</a>
                </div>
                {/* <div className="navflex">
                <a href="BELOW OPTIONS">ffeef</a>
                </div> */}
                <div className="navflex">
                <a href="/UploadUsingDropzoneContainer">DROPZONE</a>
                </div>
                </div>
                
        </nav>
        </>
    )
}
export default NavBar;