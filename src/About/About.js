import React from 'react';
import 'antd/dist/antd.css';
import './about.css';
import { Carousel } from 'antd';


const contentStyle = {
    height: '190px',
    color: '#fff',
    lineHeight: '160px',
    textAlign: 'center',
    background: '#364d79',
  };
const About = () => {
    const policebg = require('../images/policebg.jpg'); // with require
    
    return(
        <>
        
        <body>
            
            <section id="bodyone">
                <div id="policebg">
                    <div id="text">

                    
                <p id="header">A CAUSE GREATER THAN OURSELVES</p>
                <p id="para">Platform for Disinformation Analysis is built to analyse disinformation in our news today<br></br>
                to keep singapore safe and sovereign for all singaporeans</p>
                </div></div>
               
            </section>

            <section id="bodytwo">
            <div className="featureflex">
            <h1>FEATURES</h1>
            </div>
            <div className="featureflex">
            <div>
            
            </div>
            </div>
            
            </section>
            
           
            
            
            <section id="bodyworkflow">

         <h1>Workflow</h1>
  <Carousel autoplay>
    <div>
      <h3 style={contentStyle}><img src={policebg}></img></h3>
    </div>
    <div>
      <h3 style={contentStyle}>2</h3>
    </div>
    <div>
      <h3 style={contentStyle}>3</h3>
    </div>
    <div>
      <h3 style={contentStyle}>4</h3>
    </div>
  </Carousel>

        </section>
        </body>
    

        </>
    );
};
export default About;