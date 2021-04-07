<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="review">
  
    <html>
      <head>
        <title>여행 후기</title>
        <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
.header {
  background-color: #ffcc99;
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
  background-color: #ffcc99;
  color: black;
}

#navbar a.active {
  background-color: #ffa64d;
  color: white;
}

#navbar a.menu {
  background-color:#ffcc99;
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

.footer {
    padding: 5px;
    text-align: center;
    background:  #ffb366;
}

          img {width:500px; height:350px;}
        </style>
      </head>
      <body>
<div class="header">
  <h1 style="font-family:verdana" align="center">실 여행자들의 여행 후기</h1>
</div>

<div id="navbar">
   <a class="active" href="trip.xml">Home</a>
  <a href="information.xml">National</a>
  <a href="theme.xml">Theme</a>
  <a href="part2.xml">Table</a>
  <a href="tip.xml">Tip</a>
  <a href="books.xml">Book</a>
  <a class="menu"  href="part1.xml">Review</a>
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
      <br/>
        
        <table border="0" align="center">
        
          <tr>
            <td align="center">중국</td>
            <td align="center">아프리카</td>
          </tr>
          <tr>
            <td align="center"><img src="Sanghai.jpg" w="500" h="350"/></td>
            <td align="center"><img src="Africa.jpg" w="150" h="50"/></td>
          </tr>
          
          <tr>
            <td align="center"><a href="http://info.hanatour.com/getabout/area/%EC%83%81%ED%95%B4"><xsl:apply-templates select="China/description"/></a></td>
            <td align="center"><a href="http://info.hanatour.com/getabout/area/%EC%95%84%ED%94%84%EB%A6%AC%EC%B9%B4"><xsl:apply-templates select="Africa/description"/></a></td>
          </tr>
          
          </table>

<br/>
<br/>

        <table border="0" align="center">
          
          <tr>
            <td align="center">러시아</td>
            <td align="center">유럽</td>
          </tr>
          
          <tr>
           <td align="center"><img src="Rusia.jpg" w="150" h="50"/></td>
          <td align="center"><img src="Paris.jpg" w="150" h="50"/></td>
          </tr>
          
          <tr>
            <td align="center"><a href="http://info.hanatour.com/getabout/area/%EB%9F%AC%EC%8B%9C%EC%95%84"><xsl:apply-templates select="Rusia/description"/></a></td>
            <td align="center"><a href="http://info.hanatour.com/getabout/area/%EC%84%9C%EC%9C%A0%EB%9F%BD"><xsl:apply-templates select="Paris/description"/></a></td>
          </tr>
         
         </table>
         
         

<br/>
<br/>

          <table border="0" align="center">
          
          <tr>
            <td align="center">호주</td>
            <td align="center">괌</td>
          </tr>
          <tr>
            <td align="center"><img src="Austrailia.jpg" w="150" h="50"/></td>
            <td align="center"><img src="Guam.jpg" w="150" h="50"/></td>
          </tr>
          
          <tr>
            <td align="center"><a href="http://info.hanatour.com/getabout/area/%ED%98%B8%EC%A3%BC"><xsl:apply-templates select="Austrailia/description"/></a></td>
            <td align="center"><a href="http://info.hanatour.com/getabout/area/%EC%82%AC%EC%9D%B4%ED%8C%90-%EA%B4%8C"><xsl:apply-templates select="Guam/description"/></a></td>
          </tr>
        </table>
        

<br/>
<br/>

        <p align="center"><a href="http://info.hanatour.com/getabout/">더 많은 여행 후기</a></p><br/>

<div class="footer">
  <p><strong> 3팀 이세연 16112501 김인아 17122730 임수빈 17123881</strong></p>
</div>
      </body>
    
    </html>
  </xsl:template>


</xsl:stylesheet>