<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="trip">
    <html><head><title>해외 여행지</title>
     <style>
.header {
  background-color: #0099ff;
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
  background-color: #0099ff;
  color: black;
}

#navbar a.active {
  background-color: #0033cc;
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
  padding: 64px;
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
    background: #99b3ff;
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
.ava {
    vertical-align: middle;
    width: 200px;
    height: 200px;
    border-radius: 50%;
}
.chip img {
    float: left;
    margin: 0 10px 0 -25px;
    height: 35px;
    width: 35px;
}
</style>
</head>
       <body>
  <div class="header">
  <h1 style="font-size: 40px" >해외 여행지</h1>
</div>
<div id="navbar">
   <a class="active" href="trip.xml">Home</a>
  <a href="information.xml">National</a>
  <a href="theme.xml">Theme</a>
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
<xsl:apply-templates select="team"/>

<div class="container" style="background-color:#f1f1f1">
  <div class="row">
        <img src="world.png" width="80%" height="200" align="center"/>
  </div>
</div>
<br/>

<div class="container">
  <div class="row">
    <div class="column-55">
      <h1 class="xlarge-font"><b><xsl:apply-templates select="subject/t"/></b><font style="color:MediumSeaGreen;"><b class="large-font" ><xsl:apply-templates select="national/title"/></b></font></h1>
      <hr/><br/>
      <p style="font-size:24px"><xsl:apply-templates select="national/wir"/></p>
      <a href="theme.xml"><button class="button"><xsl:apply-templates select="button/nation_button"/></button></a>
    </div>
    <div class="column-44">
<table>
	<tr >
	<th><img src="Austria.jpg" alt="Avatar" class="ava"/></th>
	<th><img src="Japan2.jpg" alt="Avatar" class="ava"/></th>
<th><img src="Spain.jpg" alt="Avatar" class="ava"/></th>
	</tr>
	<tr>
	<th><img src="bali.png" alt="Avatar" class="ava"/></th>
	<th><img src="Thailand.jpg" alt="Avatar" class="ava"/></th>
<th><a href="information.xml"><img src="plus.jpg" alt="Avatar" class="ava"/></a></th>
	</tr>
</table>
    </div>
  </div>
</div>

<div class="container" style="background-color:#f1f1f1">
  <div class="row">
    <div class="column-33">
<table>
	<tr >
	<th><img src="HongKong.jpg" alt="App" width="100%" height="471"/></th>
	<th><img src="saipan2.jpg" alt="App" width="100%" height="471"/></th>
	</tr>
	<tr>
	<th><img src="pallow.jpg" alt="App" width="100%" height="471"/></th>
	<th><img src="sk.jpg" alt="App" width="100%" height="471"/></th>
	</tr>
</table>
    </div>

    <div class="column-66">
      <h1 class="xlarge-font"><b><xsl:apply-templates select="subject/t"/></b><font style="color:red;"><b class="large-font" ><xsl:apply-templates select="theme/title"/></b></font></h1><hr/><br/>
   <xsl:apply-templates select="theme"/>
<br/>
    <a href="theme.xml"><button class="button" style="background-color:red"><xsl:apply-templates select="button/theme_button"/></button></a>
    </div>
  </div>
</div>


<div class="container">
  <div class="row">
    <div class="column-55">
      <h1 class="xlarge-font"><b><xsl:apply-templates select="subject/t"/></b><font style="color:MediumSeaGreen;"><b class="large-font" ><xsl:apply-templates select="review/title"/></b></font></h1>
<hr/><br/>
      <a href="part1.xml"><button class="button"><xsl:apply-templates select="button/review_button"/></button></a>
    </div>
    
    <div class="column-44">
<xsl:apply-templates select="review"/>
    </div>
  </div>
</div>
	<br/><br/>

<div class="footer">
  <p><strong><xsl:value-of select="team/name"/>  <xsl:value-of select="team/name/@amja"/></strong></p>
</div>
	</body></html>
  </xsl:template>


<xsl:template match="review/main_image">
	 <img>
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

<xsl:template match="theme/main_image">
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

<xsl:template match="theme">
<table>
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

  <xsl:template match="team">
<div class="bg-text">
  <h2><xsl:value-of select="project"/></h2>
  <h1 style="font-size:50px">해외 여행지</h1>
  <p><xsl:value-of select="name"/>  <xsl:value-of select="name/@amja"/></p>
</div>
  </xsl:template>
  
<xsl:template match="review">
    <table style=" text-align: left;">
	<tr>
	<th><a href="http://powertraveler.tistory.com/1026"><img src="moro.jpg" alt="App" width="100%" height="471"/></a></th>
	<th><a href="http://blog.naver.com/jylking123/221038659818"><img src="hoi.jpg" alt="App" width="100%" height="471"/></a></th>
	</tr>
	<tr>
<th class="chip"><xsl:apply-templates select="main_image[@alt='moro']"/>모로코</th>	
	<th class="chip"><xsl:apply-templates select="main_image[@alt='vie']"/>호이안</th>
	</tr>
		<tr>
	<th ><xsl:apply-templates select="vie"/></th>
		<th ><xsl:apply-templates select="moro"/></th>
	</tr>
	<tr style="color: grey;">
	<th><xsl:apply-templates select="vie/@write"/></th>
		<th><xsl:apply-templates select="moro/@write"/></th>
	</tr>
</table>
</xsl:template>

</xsl:stylesheet>

