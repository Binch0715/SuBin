<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="trip">
<html><head><title>해외 여행지</title>
<style>
 body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
.header {
  background-color: #d6d6c2;
  padding: 50px;
  text-align: center;
color: white;
}

#navbar {
  overflow: hidden;
  background-color: #333;
}

#navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

#navbar a:hover {
  background-color: #d6d6c2;
  color: black;
}

#navbar a.active {
  background-color: #999966;
  color: white;
}

#navbar a.menu {
  background-color:#d6d6c2;
  color: white;
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 60px;
}



html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float:left;
  left:50%;
  width: 50%;
  padding: 5px;
text-align: center;
}


@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);

}

.container {
  padding: 0 16px;
}
.row{
    margin-right: 80px;
    margin-left: 250px;
}
.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
padding: 0 8px;
}


.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

.footer {
    padding: 5px;
    text-align: center;
    background: #999966;
}
</style>
</head>
<body>
              <div class="header">
<h1 align="center"><strong>여행선호도가 높은 나라들 </strong></h1>
</div>

<div id="navbar" >
   <a class="active" href="trip.xml">Home</a>
  <a  class="menu" href="information.xml">National</a>
  <a href="theme.xml">Theme</a>
  <a href="part2.xml">Table</a>
  <a  href="tip.xml">Tip</a>
  <a href="books.xml">Book</a>
  <a href="part1.xml">Review</a>
</div>
<br/><br/>

<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
       




 
<div class="row">
  <div class="column">
    <div class="card">
      <img src="Japan2.jpg" width="800" height="500"  style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="information/Japan/name"/></h2>
        <p class="title"><xsl:value-of select="information/Japan/description"/></p>
        <p><xsl:value-of select="information/Japan/language"/><br/>
        <xsl:value-of select="information/Japan/location"/><br/>
        <xsl:value-of select="information/Japan/airplanetime"/><br/>
        <xsl:value-of select="information/Japan/time"/><br/>
        <xsl:value-of select="information/Japan/spot"/><br/>
        </p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="Kotakinabalu.jpg" width="800" height="500"  style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="information/Kotakinabalu/name"/></h2>
        <p class="title"><xsl:value-of select="information/Kotakinabalu/description"/></p>
        <p><xsl:value-of select="information/Kotakinabalu/language"/><br/>
        <xsl:value-of select="information/Kotakinabalu/location"/><br/>
        <xsl:value-of select="information/Kotakinabalu/airplanetime"/><br/>
        <xsl:value-of select="information/Kotakinabalu/time"/><br/>
        <xsl:value-of select="information/Kotakinabalu/spot"/><br/>
        </p>
      </div>
    </div>
  </div>
  </div>
  
  
  <div class="row">
  <div class="column">
    <div class="card">
      <img src="Vladivostok.jpg" width="800" height="500"  style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="information/Vladivostok/name"/></h2>
        <p class="title"><xsl:value-of select="information/Vladivostok/description"/></p>
        <p><xsl:value-of select="information/Vladivostok/language"/><br/>
        <xsl:value-of select="information/Vladivostok/location"/><br/>
        <xsl:value-of select="information/Vladivostok/airplanetime"/><br/>
        <xsl:value-of select="information/Vladivostok/time"/><br/>
        <xsl:value-of select="information/Vladivostok/spot"/><br/>
        </p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
    <img src="Spain2.jpg" width="800" height="500" style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="information/Spain/name"/></h2>
        <p class="title"><xsl:value-of select="information/Spain/description"/></p>
        <p><xsl:value-of select="information/Spain/language"/><br/>
        <xsl:value-of select="information/Spain/location"/><br/>
        <xsl:value-of select="information/Spain/airplanetime"/><br/>
        <xsl:value-of select="information/Spain/time"/><br/>
        <xsl:value-of select="information/Spain/spot"/><br/>
        </p>
      </div>
    </div>
  </div>
  </div>
  


<div class="row">
  <div class="column">
    <div class="card">
      <img src="Paris.jpg" width="800" height="500" style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="information/Paris/name"/></h2>
        <p class="title"><xsl:value-of select="information/Paris/description"/></p>
        <p><xsl:value-of select="information/Paris/language"/><br/>
        <xsl:value-of select="information/Paris/location"/><br/>
        <xsl:value-of select="information/Paris/airplanetime"/><br/>
        <xsl:value-of select="information/Paris/time"/><br/>
        <xsl:value-of select="information/Paris/spot"/><br/>
        </p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="Laos.jpg" width="800" height="500" style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="information/Laos/name"/></h2>
       <p class="title"><xsl:value-of select="information/Laos/description"/></p><br/>
        <p><xsl:value-of select="information/Laos/language"/><br/>
        <xsl:value-of select="information/Laos/location"/><br/>
        <xsl:value-of select="information/Laos/airplanetime"/><br/>
        <xsl:value-of select="information/Laos/time"/><br/>
        <xsl:value-of select="information/Laos/spot"/><br/>
        </p>
      </div>
    </div>
  </div>
  </div>


<br/><br/>
	

<div class="footer">
  <p><strong> 3팀 이세연 16112501 김인아 17122730 임수빈 17123881</strong></p>
</div>

</body>
</html>
</xsl:template>


</xsl:stylesheet>
