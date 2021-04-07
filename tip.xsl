<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="tip">
<html><head><title>해외 여행지</title>
<style>
 body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
.header {
  background-color: #cc99ff;
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
  background-color: #cc99ff;
  color: black;
}

#navbar a.active {
  background-color: #b31aff;
  color: white;
}

#navbar a.menu {
  background-color:#cc99ff;
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
  width: 20%;
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
    background: #f2ccff;
}
</style>
</head>
<body bgcolor="#f2e6ff">
              <div class="header">
  <h1>여행 관련 다양한 자료팁</h1>
</div>

<div id="navbar" >
   <a class="active" href="trip.xml">Home</a>
  <a href="information.xml">National</a>
  <a href="theme.xml">Theme</a>
  <a href="part2.xml">Table</a>
  <a class="menu" href="tip.xml">Tip</a>
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
       


<h1 align="center"><strong>여행 관련 어플리케이션</strong></h1>

 
<div class="row">
  <div class="column">
    <div class="card">
      <img src="WAUG.jpeg" width="350" height="250"  style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="WAUG/name"/></h2>
        <p class="title"><xsl:value-of select="WAUG/description"/></p>
        <p><a href="https://play.google.com/store/apps/details?id=kr.co.waug.waug"><button class="button">WAUG</button></a></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="Hanatour.jpeg" width="350" height="250"  style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="Hanatour/name"/></h2>
        <p class="title"><xsl:value-of select="Hanatour/description"/></p>
         <p><a href="https://play.google.com/store/apps/details?id=com.hanatour.dotcom"><button class="button">Hanatour</button></a></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="triptrip.jpeg" width="350" height="250"  style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="triptrip/name"/></h2>
        <p class="title"><xsl:value-of select="triptrip/description"/></p>
        <p><a href="https://play.google.com/store/apps/details?id=com.tourbaksaapp.app"><button class="button">Tourbaksa</button></a></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
    <img src="pocket.jpeg" width="350" height="250" style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="pocket/name"/></h2>
        <p class="title"><xsl:value-of select="pocket/description"/></p>
        <p><a href="https://play.google.com/store/apps/details?id=com.trabee.exnote.travel"><button class="button">TrabeePocket</button></a></p>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="column">
    <div class="card">
      <img src="googlemap.jpeg" width="350" height="250" style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="googlemap/name"/></h2>
        <p class="title"><xsl:value-of select="googlemap/description"/></p>
        <p><a href="https://play.google.com/store/apps/details?id=com.google.android.apps.mapslite"><button class="button">Googleap</button></a></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="airbnb.jpeg" width="350" height="250" style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="airbnb/name"/></h2>
        <p class="title"><xsl:value-of select="airbnb/description"/></p>
        <p><a href="https://play.google.com/store/apps/details?id=com.airbnb.android"><button class="button">Airbnb</button></a></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="hotel.jpeg" width="350" height="250" style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="hotel/name"/></h2>
        <p class="title"><xsl:value-of select="hotel/description"/></p>
        <p><a href="https://play.google.com/store/apps/details?id=com.hotelscombined.mobile"><button class="button">HotelsCombined</button></a></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="triple.jpeg" width="350" height="250" style="width:100%"/>
      <div class="container">
        <h2><xsl:value-of select="triple/name"/></h2>
        <p class="title"><xsl:value-of select="triple/description"/></p>
        <p><a href="https://play.google.com/store/apps/details?id=com.titicacacorp.triple"><button class="button">Triple</button></a></p>
      </div>
    </div>
  </div>
</div>


<br/><br/>
	
<h1 align="center"><strong>여행 관련 사이트</strong></h1><br/>

<table width="950" align="center" bgcolor="#ccccff" >
<tr bgcolor=" #9999ff"><th>항공권</th>
<th>외교부</th>
<th>숙소</th>
<th>액티비티 입장권 </th></tr>

<tr>
<th><p><a href="http://www.hanatour.com/asp/booking/airticket/gi-10000.asp"><xsl:value-of select="airplane/hanatour/name"/></a></p>
<p><a href="https://www.jejuair.net/jejuair/kr/com/jeju/ibe/availInit.do"><xsl:value-of select="airplane/jejuair/name"/></a></p>
<p><a href="http://www.modetour.com/LiveBooking/Air5/Main.aspx?MLoc=03"><xsl:value-of select="airplane/modetour/name"/></a></p>
<p><a href="http://air.ybtour.co.kr/air/b2c/AIR/INT/AIRINTTRP0100100000.k1?KSESID=air:b2c:SELK138AN:AA024::00"><xsl:value-of select="airplane/yellowballoon/name"/></a></p></th>

<th><p><a href="http://www.mofa.go.kr/www/wpge/m_3435/contents.do"><xsl:value-of select="link/country/name"/></a></p></th>

<th><p><a href="https://www.airbnb.co.kr/?logo=1"><xsl:value-of select="sleep/airbnb/name"/></a></p>
<p><a href="https://www.hotelscombined.co.kr/=1"><xsl:value-of select="sleep/hotelscombine/name"/></a></p>
<p><a href="https://www.agoda.com/ko-kr/?cid=1719676"><xsl:value-of select="sleep/agoda/name"/></a></p>
<p><a href="https://www.trivago.co.kr/"><xsl:value-of select="sleep/trivago/name"/></a></p></th>

<th><p><a href="http://www.interpark.com/malls/index.html?gateTp=1"><xsl:value-of select="activitysite/interpark/name"/></a></p></th>
</tr>

</table>
<br/><br/>
<div class="footer">
  <p><strong> 3팀 이세연 16112501 김인아 17122730 임수빈 17123881</strong></p>
</div>

</body>
</html>
</xsl:template>


</xsl:stylesheet>
