<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="graph">
  
  <html>
    <head>
      <title>해외 여행객 통계</title>
      <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
.header {
  background-color: #ffcc66;
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
  background-color: #ffcc66;
  color: black;
}

#navbar a.active {
  background-color: #ffaa00;
  color: white;
}

#navbar a.menu {
  background-color:#ffcc66;
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


  img {width:1000px; height:600px;}

.footer {
    padding: 5px;
    text-align: center;
    background: #ffcc66;
}
      </style>
    </head>
    <body>
    <div class="header">
  <h1 style="font-family:verdana" align="center">해외 여행객 통계</h1>
</div>

<div id="navbar">
   <a class="active" href="trip.xml">Home</a>
  <a href="information.xml">National</a>
  <a href="theme.xml">Theme</a>
  <a class="menu"  href="part2.xml">Table</a>
  <a href="tip.xml">Tip</a>
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
      <br/>
    
    <table>
<tr><th align="center" colspan="2"><h2 style="text-align:center;" >연령별 출국자 비율</h2></th></tr>    
<tr><th> <img src="age_out.png" style="float:center;"/></th>    
<th  align="right">2017년 지난 한 해 동안 국내에서 해외로 출국한 사람들의 비율로 <br/>30대가 가장 많은 비율을 차지하고 있다.</th></tr>    
    </table>

    
    
    <br/>
    <br/>
    <hr/>
    <br/>
    <br/>
    
  <table>
<tr><th align="center" colspan="2">    <h2 style="text-align:center;" >아시아를 제외한 해외 출국자 비율</h2></th></tr>    
<tr> 
<th  align="left">2017년 지난 한 해 동안 아시아를 제외한 국가로 출국한 비율로<br/>미국이 가장 큰 비율을 차지 하고 있다. </th>
<th> <img src="asia_out.png" style="float:center;"/></th>   </tr>    
    </table>
  
    <br/>
    <br/>
    <hr/>
    <br/>
    <br/>
      <table>
<tr><th align="center" colspan="2">    <h2 style="text-align:center;" >아시아로 출국한 출국자 비율</h2></th></tr>    
<tr><th>   <img src="out.png" style="float:center;"/></th>    
<th  align="right">2017년 지난 한 해 동안 아시아로 출국한 비율로<br/> 베트남이 가장 큰 비율을 차지하며<br/>태국과 필리핀이 그 외의 비율을 대다수 차지하고 있다.</th></tr>    
    </table>
    
    <br/>
    <br/>
    <hr/>
    <br/>
    <br/>
          <table>
<tr><th align="center" colspan="2">    <h2 style="text-align:center;" >연도별 연령별 해외 출국자 수</h2></th></tr>    
<tr><th>  <img src="year_out.png" style="float:center;"/></th>    
<th  align="right">2011년부터 2017년까지의 연도별, 연령별 해외 출국자 수로서<br/> 모든 연령의 출국자 수가 해마다 증가하고 있다.</th></tr>    
    </table>

    <br/>
    <br/>
    <hr/>
    <br/>
    <br/>
            <table>
<tr><th align="center" colspan="2">    <h2 style="text-align:center;" >2018년의 해외 출국자 수</h2></th></tr>    
<tr><th> <img src="outer.png" style="float:center;" /></th>    
<th  align="right">2017년과 2018년의 1월부터 10월까지의 해외 출국자로<br/> 2017년이 2018년보다 매달 더 많은 출국자들이 출국한다.</th></tr>    
    </table>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>


<p style="text-align:center;">출처:한국문화관광연구원: 2017국민여행실태조사보고서,  통계월보_201810</p>

    
<br/>
<br/>
<div class="footer">
  <p><strong> 3팀 이세연 16112501 김인아 17122730 임수빈 17123881</strong></p>
</div>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
