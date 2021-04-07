<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="theme">
    <html><head><title>해외 여행지</title>
     <style>
.header {
  background-color: #ffe6e6;
  padding: 50px;
  text-align: center;
color: white;
}
#navbar a.menu {
  background-color:#ffe6e6;
  color: black;
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
  background-color: #ffe6e6;
  color: black;
}

#navbar a.active {
  background-color: #ffb3b3;
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


* {
  box-sizing:border-box;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.container {
  padding: 50px;
}

.row:after {
  content: "";
  display: table;
  clear: both
}

.column-66 {
  float: left;
  width: 66.66666%;
  padding: 20px;
}
.column-55 {
  float: left;
  width: 55.55555%;
  padding: 20px;
}

.column-44 {
  float: left;
  width: 44.44444%;
  padding: 0px;
}

.column-33 {
  float: left;
  width: 33.33333%;
  padding: 20px;

}

.large-font {
  font-size: 48px;
}

.xlarge-font {
  font-size: 64px
}

.button {
  border: none;
  color: white;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  background-color: #4CAF50;
}

img {
  display: block;
  height: auto;
  max-width: 100%;
}

@media screen and (max-width: 900px) {
  .column-66,
  .column-33 {
    width: 100%;
    text-align: center;
  }
  img {
    margin: auto;
  }
}

.footer {
    padding: 5px;
    text-align: center;
    background: #ffb3b3;
}
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 80%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}
.chip {
    display: inline-block;
    padding: 0 25px;
    height: 30px;
    font-size: 16px;
    line-height: 50px;
}
.avatar {
    vertical-align: middle;
    width: 50px;
    height: 50px;
    border-radius: 50%;
}

.chip img {
    float: left;
    margin: 0 10px 0 -25px;
    height: 35px;
    width: 35px;
}
form.example input[type=text] {
    padding: 10px;
    font-size: 17px;
    border: 1px solid grey;
    float: left;
    width: 80%;
    background: #f1f1f1;
}

form.example button {
    float: left;
    width: 20%;
    padding: 10px;
    background: #2196F3;
    color: white;
    font-size: 17px;
    border: 1px solid grey;
    border-left: none;
    cursor: pointer;
    height:45;
}

form.example button:hover {
    background: #0b7dda;
}

form.example::after {
    content: "";
    clear: both;
    display: table;
}

.flip-box {
  width: 300px;
  height: 200px;
  border: 1px solid #f1f1f1;
perspective: 1000px;
}

.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-box-front {

}

.flip-box-back {
   color: black;
  transform: rotateY(180deg);
}

.co {
  position: relative;

}

.ima {
  opacity: 1;
  display: block;
    width: 200px;
    height: 200px;
  transition: .5s ease;
  backface-visibility: hidden;
     border-radius: 50%;
}

.over {

  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 100%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: rgb(0,0,0); 
  background-color: rgba(0,0,0, 0.4);
   border-radius: 50%;
}
.co:hover .image {
  opacity: 0.3;
}
.co:hover .over {
  opacity: 1;
}

.t {
  color: white;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: center;
}
.ca {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
 background-color:#ffffff;
}

.ca:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.c {
    padding: 2px 16px;
}

.ner {
  position: relative;
  max-width: 800px;
  margin: 0 auto;
}

.ner img {vertical-align: middle;}

.ner .ent {
  position: absolute;
  bottom: 0;
  color: #f1f1f1;
  width: 100%;
  padding: 5px;
  font-size: 17px;
}
</style>
</head>
       <body>
  <div class="header">
     <h1 class="xlarge-font" align="center" style="color:#333300;"><b>BEST</b><font style="color:red;"><b class="large-font" > 테마여행지</b></font></h1>
 <xsl:apply-templates select="the"/>
<br/>
</div>

<div id="navbar">
   <a class="active" href="trip.xml">Home</a>
  <a href="information.xml">National</a>
  <a class="menu" href="theme.xml">Theme</a>
  <a href="part2.xml">Table</a>
  <a href="tip.xml">Tip</a>
  <a href="books.xml">Book</a>
  <a href="part1.xml">Review</a>
</div>

<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset &gt;= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>

<div class="container">
  <div class="row">
  <div class="column-44">
  <table>
<tr>
<th><img src="wedding.png" alt="Avatar" width="150" height="200"/></th>
<th><h1 class="xlarge-font"><font style="color:MediumSeaGreen;"><b class="xlarge-font" >Honeymoon </b></font></h1></th>
</tr>  
  </table>
      <br/>
    </div>
      <div class="column-55">
<table>
<tr>
<th class="co">
  <img src="Maldives.png" alt="Avatar" class="ima"/>
  <div class="t"><xsl:value-of select="honeymoon/Maldives/@eng"/><hr/><xsl:value-of select="honeymoon/Maldives"/></div>
  <div class="over" style="  background-color: rgba(51, 153, 255, 0.4);">
</div>
 </th>
 <th class="co">
  <img src="bali.png" alt="Avatar" class="ima"/>
  <div class="t"><xsl:value-of select="honeymoon/Bali/@eng"/><hr/><xsl:value-of select="honeymoon/Bali"/></div>
  <div class="over" style="  background-color: rgba(255, 255, 0, 0.4);">
</div>
 </th>
 <th class="co">
  <img src="mori.jpg" alt="Avatar" class="ima"/>
  <div class="t"><xsl:value-of select="honeymoon/Mauritius/@eng"/><hr/><xsl:value-of select="honeymoon/Mauritius"/></div>
  <div class="over" style="  background-color: rgba(0, 153, 51, 0.4);">
</div>
 </th>
</tr>
</table>
</div>
    </div>
</div>

<div class="container" style="background-color:#ccf2ff">
  <div class="row">
          <h1 align="center"><font style="color:#004d66;"  class="large-font"><b>크루즈  </b></font>지역별 BEST 여행</h1>
      <hr/><br/>
<table width="1000" align="center">
<tr>
<th class="ca">
  <img src="Alaska.jpg" alt="Avatar" style="width:100%"/>
  <div class="c">
    <h3 align="left"><b><xsl:value-of select="cruze/Alaska"/></b></h3> 
  </div>
</th>
<th class="ca">
  <img src="HongKong.jpg" alt="Avatar" style="width:100%"/>
  <div class="c">
    <h3 align="left"><b><xsl:value-of select="cruze/HongKong"/></b></h3> 
  </div>
</th>
<th class="ca">
  <img src="Europe.jpg" alt="Avatar" style="width:100%"/>
  <div class="c">
    <h3 align="left"><b><xsl:value-of select="cruze/Europe"/></b></h3> 
  </div>
</th>
<th class="ca">
  <img src="Caribbean.jpg" alt="Avatar" style="width:100%"/>
  <div class="c">
    <h3 align="left"><b><xsl:value-of select="cruze/Caribbean"/>즈</b></h3> 
  </div>
</th>
</tr>
</table>
    </div>
  </div>

<div class="container" style="background-color:#f1f1f1">
  <div class="row">
    <h1><b class="large-font">배낭<font style="color:red;">여행</font></b></h1>
<br/>
  <table align="center">
  <tr>
<th colspan="2"><h1 align="left"><xsl:value-of select="bagpack/single"/></h1></th>  
<th><h1 align="left"><xsl:value-of select="bagpack/family"/></h1></th>  
<th><h1 align="left"><xsl:value-of select="bagpack/friend"/></h1></th>   
  </tr>
<tr >
<th class="flip-box"><div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="rsa1.jpg" alt="App" width="100%" height="471"/>
    </div>
    <div class="flip-box-back">
      <img src="rsa.jpg" alt="App" width="100%" height="471"/>
    </div>
  </div></th>
  <th class="flip-box"><div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="vie1.jpg" alt="App" width="100%" height="471"/>
    </div>
    <div class="flip-box-back">
      <img src="vie.jpg" alt="App" width="100%" height="471"/>
    </div>
  </div></th>
<th class="flip-box"><div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="tha1.jpg" alt="App" width="100%" height="471"/>
    </div>
    <div class="flip-box-back">
      <img src="tha.jpg" alt="App" width="100%" height="471"/>
    </div>
  </div></th>
<th class="flip-box"><div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="cze1.jpg" alt="App" width="100%" height="471"/>
    </div>
    <div class="flip-box-back">
      <img src="cze.jpg" alt="App" width="100%" height="471"/>
    </div>
  </div></th>
</tr>  
<tr>
<th class="flip-box"><div class="flip-box-inner">
    <div class="flip-box-front">
     <img src="aus1.jpg" alt="App" width="100%" height="471"/>
    </div>
    <div class="flip-box-back">
      <img src="aus.jpg" alt="App" width="100%" height="471"/>
    </div>
  </div></th>
<th class="flip-box"><div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="rus1.jpg" alt="App" width="100%" height="471"/>
    </div>
    <div class="flip-box-back">
      <img src="rus.jpg" alt="App" width="100%" height="471"/>
    </div>
  </div></th>
<th class="flip-box"><div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="usa1.jpg" alt="App" width="100%" height="471"/>
    </div>
    <div class="flip-box-back">
      <img src="usa.jpg" alt="App" width="100%" height="471"/>
    </div>
  </div></th>
<th class="flip-box"><div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="jpn1.jpg" alt="App" width="100%" height="471"/>
    </div>
    <div class="flip-box-back">
      <img src="jpn.jpg" alt="App" width="100%" height="471"/>
    </div>
  </div></th>
</tr>
  </table>
  </div>
  </div>

<div class="container" style="background-color:#ffe6cc">
  <div class="row">
          <h1 align="center"  class="large-font"><font style="color:#0066ff;" ><b>레포츠</b></font><font style="color:MediumSeaGreen;"> / 트레킹</font></h1>
      <hr/><br/>
<table width="1000" align="center">
<tr>
<th class="ca">
  <img src="ski.jpg" alt="Avatar" style="width:100%"/>
  <div class="c">
<h3 align="left"><xsl:value-of select="activity/ski"/></h3>
    <h3 align="left"><xsl:value-of select="activity/ski/@sport"/></h3> 
  </div>
</th>
<th class="ca">
  <img src="pallow.jpg" alt="Avatar" style="width:100%"/>
  <div class="c">
<h3 align="left"><xsl:value-of select="activity/scuba"/></h3> 
    <h3 align="left"><xsl:value-of select="activity/scuba/@sport"/> </h3> 
  </div>
</th>
<th class="ca">
  <img src="trekking.jpg" alt="Avatar" style="width:100%"/>
  <div class="c">
<h3 align="left"><xsl:value-of select="activity/trekking"/></h3>
    <h3 align="left"><xsl:value-of select="activity/trekking/@sport"/></h3> 
  </div>
</th>
<th class="ca">
  <img src="adventure.png" alt="Avatar" style="width:100%"/>
  <div class="c">
  <h3 align="left"><xsl:value-of select="activity/adventure"/></h3> 
    <h3 align="left"><xsl:value-of select="activity/adventure/@sport"/></h3> 
  </div>
</th>
</tr>
</table>
    </div>
  </div>


<div class="container">
  <div class="row">
    

      <h1 class="xlarge-font" align="right"><font style="color:MediumSeaGreen;"> GOLF</font></h1>
<hr/><br/>
  
  <table width="1000" align="center">
	<tr>
	<th rowspan="2" class="ner">
  <img src="china.jpg" alt="Notebook" style="width:100%;"/>
  <div class="ent" >
<h2><xsl:value-of select="golf/china"/></h2>
  </div>
</th>
	<th colspan="2" class="ner">
  <img src="japan.jpg" alt="Notebook" style="width:100%;"/>
  <div class="ent">
 <h2><xsl:value-of select="golf/japan"/></h2>
  </div>
</th>
	</tr>
		<tr>
	<th class="ner">
  <img src="philippines.png" alt="Notebook" style="width:100%;"/>
  <div class="ent">
<h2><xsl:value-of select="golf/philippines"/></h2>
  </div>
</th>
<th class="ner">
  <img src="saipan.jpg" alt="Notebook" style="width:100%;"/>
  <div class="ent" >
<h2><xsl:value-of select="golf/saipan"/></h2>
  </div>
</th>
	</tr>
</table>
    </div>
  
</div>
	<br/><br/>

<div class="footer">
  <p><strong><xsl:value-of select="team/name"/>  <xsl:value-of select="team/name/@amja"/></strong></p>
</div>
	</body></html>
  </xsl:template>

<xsl:template match="the">
<table align="center">
	<tr>
	<th><xsl:apply-templates select="main_image[@alt='honey']"/></th>
	<th><xsl:apply-templates select="honey"/></th>
<th><xsl:apply-templates select="main_image[@alt='cruze']"/></th>
<th><xsl:apply-templates select="cruze"/></th>
<th><xsl:apply-templates select="main_image[@alt='bag']"/></th>
<th><xsl:apply-templates select="bag"/></th>
	<th><xsl:apply-templates select="main_image[@alt='tra']"/></th>
<th><xsl:apply-templates select="sport"/></th>
	<th><xsl:apply-templates select="main_image[@alt='gol']"/></th>
<th><xsl:apply-templates select="golf"/></th>
	</tr>
</table>
</xsl:template>

<xsl:template match="the/main_image">
	 <img  class="avatar">
	<xsl:attribute name="src">
	<xsl:value-of select="./@file"/></xsl:attribute>
	<xsl:attribute name="width">
	<xsl:value-of select="ceiling(./@w div 2)"/>
	</xsl:attribute>
	<xsl:attribute name="height">
	<xsl:value-of select="ceiling(./@h div 2)"/>
	</xsl:attribute>
	</img>
    </xsl:template>    


</xsl:stylesheet>

