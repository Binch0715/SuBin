<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="books">
    <html><head><title>해외 여행지</title>
     <style>
.header {
  background-color: #66cc66;
  padding: 50px;
  text-align: center;
color: white;
}
#navbar a.menu {
  background-color: #66cc66;
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
  background-color: #66cc66;
  color: black;
}

#navbar a.active {
  background-color: #009933;
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
  padding: 20px;
}

.row:after {
  content: "";
  display: table;
  clear: both
}


.large-font {
  font-size: 48px;
}

.xlarge-font {
  font-size: 64px
}


img {
  display: block;
  height: auto;
  max-width: 100%;
margin: auto;
}


.footer {
    padding: 5px;
    text-align: center;
    background: #66cc66;
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
    padding: 10px;
}
.ava1 {
    vertical-align: middle;
    width: 350px;
    height: 150px;
}
.chip img {
    float: left;
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
.con {
    position: relative;
    width: 15%;
}

.im {
  opacity: 1;
  display: block;
  width: 300;
  height: 380;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.con:hover .im {
  opacity: 0.3;
}

.con:hover .middle {
  opacity: 1;
}

.text {
  color: black;
  font-size: 16px;
}


</style>
</head>
       <body>
  <div class="header">
  <table align="center">
	<tr>
	<th><img src="bok.png" width="150" height="150" align="center"/></th>
	<th><h1 style="font-size: 40px" >BEST 추천 여행 도서</h1></th>
	</tr>
</table><br/>
  
<form class="example" action="/action_page.php" style="margin:auto;max-width:500px">
  <input type="text" placeholder="Search.." name="search2"/>
  <button>검색</button>
</form>
</div>
<div id="navbar">
   <a class="active" href="trip.xml">Home</a>
  <a href="information.xml">National</a>
  <a href="theme.xml">Theme</a>
  <a href="part2.xml">Table</a>
  <a href="tip.xml">Tip</a>
  <a class="menu" href="books.xml">Book</a>
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

<div class="container" style="background-color:#f1f1f1">
  <div class="row" align="center">
      <h1 class="large-font"><font style="color:MediumSeaGreen;"><b>베스트 셀러</b></font></h1>
      <hr/><br/>

<table align="center" width="1200">
<tr>
	<td lowspan="2"><a href="https://book.naver.com/bookdb/book_detail.nhn?bid=13603044"><img src="Book1.jpg" class="ava1"/></a></td>
	<th align="left"><strong><a href="https://book.naver.com/bookdb/book_detail.nhn?bid=13603044"><xsl:value-of select="Book1/name"/></a></strong><br/>
	<xsl:value-of select="Book1/write"/><font color="gray"><xsl:value-of select="Book1/writeinfo"/></font><br/><br/>
	<font color="gray">소개 </font> <xsl:value-of select="Book1/description"/></th>
	
		<td lowspan="2">	<a href="https://book.naver.com/bookdb/book_detail.nhn?bid=13673580"><img src="Book5.jpg" class="ava1"/></a></td>
	<th align="left"><strong><a href="https://book.naver.com/bookdb/book_detail.nhn?bid=13673580"><xsl:value-of select="Book5/name"/></a></strong><br/>
	<xsl:value-of select="Book5/write"/><font color="gray"><xsl:value-of select="Book5/writeinfo"/></font><br/><br/>
	<font color="gray">소개 </font><xsl:value-of select="Book5/description"/></th>
	</tr>
	<tr>
	<td lowspan="2">	<a href="https://book.naver.com/bookdb/book_detail.nhn?bid=13079274"><img src="Book4.jpg" class="ava1"/></a></td>
	<th  align="left"><strong><a href="https://book.naver.com/bookdb/book_detail.nhn?bid=13079274"><xsl:value-of select="Book4/name"/></a></strong><br/>
	<xsl:value-of select="Book4/write"/><font color="gray"><xsl:value-of select="Book4/writeinfo"/></font><br/><br/>
	<font color="gray">소개 </font><xsl:value-of select="Book4/description"/></th>
	
	<td lowspan="2">	<a href="https://book.naver.com/bookdb/book_detail.nhn?bid=13994445"><img src="Book2.jpg" class="ava1"/></a></td>
	<th align="left"><strong><a href="https://book.naver.com/bookdb/book_detail.nhn?bid=13994445"><xsl:value-of select="Book2/name"/></a></strong><br/>
	<xsl:value-of select="Book2/write"/><font color="gray"><xsl:value-of select="Book2/writeinfo"/></font><br/><br/>
	<font color="gray">소개 </font><xsl:value-of select="Book2/description"/></th>
	</tr>
</table>
    
  </div>
</div>
<div class="container" style="background-color:#ffffcc">
  <div class="row" >
      <h1><b  >화제의 신간</b><font  class="large-font" style="color:red;" ><b > TOP 5</b></font></h1>
      <hr/>
<table align="center">
<tr>
<th class="con">
  <img src="Book5-5.jpg" alt="Avatar" class="im"/>
  <div class="middle">
    <div class="text">
    <xsl:value-of select="Book5-5/description"/> <br/>
   <a href="https://book.naver.com/bookdb/book_detail.nhn?bid=11665282"> <img src="baguni.png" alt="Avatar" class="avatar"/></a>
    </div>
  </div>
</th>
<th class="con">
  <img src="Book2-2.jpg" alt="Avatar" class="im"/>
  <div class="middle">
    <div class="text">
    <xsl:value-of select="Book2-2/description"/><br/>
   <a href="https://book.naver.com/bookdb/book_detail.nhn?bid=13762681"> <img src="baguni.png" alt="Avatar" class="avatar"/></a>
    </div>
  </div>
</th>
<th class="con">
  <img src="ja.jpg" alt="Avatar" class="im"/>
  <div class="middle">
     <div class="text">
    <xsl:value-of select="Book6-6/description"/><br/>
   <a href="https://book.naver.com/bookdb/book_detail.nhn?bid=13953915"> <img src="baguni.png" alt="Avatar" class="avatar"/></a>
    </div>
  </div>
</th>
<th class="con">
  <img src="book6.jpg" alt="Avatar" class="im"/>
 <div class="middle">
  <div class="text">
   <xsl:value-of select="Book7/description"/> <br/>
   <a href="https://book.naver.com/bookdb/book_detail.nhn?bid=13920560"> <img src="baguni.png" alt="Avatar" class="avatar"/></a>
    </div>
  </div>
</th>
<th class="con">
  <img src="book6-6.jpg" alt="Avatar" class="im"/>
<div class="middle">
  <div class="text">
    <xsl:value-of select="Book6-6/description"/> <br/>
   <a href="https://book.naver.com/bookdb/book_detail.nhn?bid=13733902"> <img src="baguni.png" alt="Avatar" class="avatar"/></a>
    </div>
  </div>
</th>
</tr>
<tr>
<th><xsl:value-of select="Book5-5/name"/></th>
<th><xsl:value-of select="Book2-2/name"/></th>
<th><xsl:value-of select="Book6-6/name"/></th>
<th><xsl:value-of select="Book7/name"/></th>
<th><xsl:value-of select="Book6/name"/></th>
</tr>
</table>
<br/>

</div>
</div>

<div class="container" style="background-color:#f1f1f1">
  <div class="row">
      <h1 class="large-font"  align="center"><b>HOT</b><font style="color:red;"><b > E-Book</b></font></h1><hr/><br/>
<br/>
<table align="center">
	<tr >
	<th><a href="http://digital.kyobobook.co.kr/digital/ebook/ebookDetail.ink?barcode=4801160505048"> <img src="jaj.jpg" alt="Avatar" class="ava"/></a></th>
	<th><a href="http://digital.kyobobook.co.kr/digital/ebook/ebookDetail.ink?barcode=4801160505024"><img src="hawi.jpg" alt="Avatar" class="ava"/></a></th>
<th><a href="http://digital.kyobobook.co.kr/digital/ebook/ebookDetail.ink?barcode=4801187345320"><img src="fra.jpg" alt="Avatar" class="ava"/></a></th>
<th><a href="http://digital.kyobobook.co.kr/digital/ebook/ebookDetail.ink?barcode=4801160505314"><img src="hong.png" alt="Avatar" class="ava"/></a></th>
	</tr>
	<tr >
	<th>오사카</th>
<th>하와이</th>
<th>프라하</th>
<th>홍콩</th>
	</tr>
	<tr>
	<th><a href="http://digital.kyobobook.co.kr/digital/ebook/ebookDetail.ink?barcode=4801160506229"><img src="new.jpg" alt="Avatar" class="ava"/></a></th>
	<th><a href="http://digital.kyobobook.co.kr/digital/ebook/ebookDetail.ink?barcode=4801160500890"><img src="gre.jpg" alt="Avatar" class="ava"/></a></th>
<th><a href="http://digital.kyobobook.co.kr/digital/ebook/ebookDetail.ink?barcode=4801160500562"><img src="dubro.jpg" alt="Avatar" class="ava"/></a></th>
<th><a href="http://digital.kyobobook.co.kr/digital/ebook/ebookDetail.ink?barcode=4801160505185"><img src="tai.jpg" alt="Avatar" class="ava"/></a></th>
	</tr>
	<tr >
	<th>뉴욕</th>
<th>그리스</th>
<th>크로아티아</th>
<th>타이베이</th>
	</tr>
</table>

    </div>
  
</div>


<div class="container">
  <div class="row">
      <h1><b>추천</b><font style="color:red;"><b>리뷰</b></font><img src="star.png"  class="chip" /> </h1>
<hr/><br/>
 <table width="1000" align="center">
<tr>
	<td lowspan="2"><a href="https://blog.naver.com/dartanyang/221368484170"><img src="Book3-3.jpg" width="100%" height="471"/></a></td>
	<th align="left"><strong><a href="https://blog.naver.com/dartanyang/221368484170"><xsl:value-of select="Book3-3/name"/></a></strong><br/>
	<p><xsl:value-of select="Book3-3/write/@info"/><font color="green"> <xsl:value-of select="Book3-3/write"/></font> </p>
	<font color="gray"><xsl:value-of select="Book1-1/description"/> </font> </th>
	
	<td lowspan="2"><a href="https://blog.naver.com/enjoy_hyang/221315680007"><img src="Book1-1.jpg" width="100%" height="471"/></a></td>
	<th align="left"><strong><a href="https://blog.naver.com/enjoy_hyang/221315680007"><xsl:value-of select="Book1-1/name"/></a></strong><br/>
	<p><xsl:value-of select="Book1-1/write/@info"/><font color="green"> <xsl:value-of select="Book1-1/write"/></font></p>
	<font color="gray"><xsl:value-of select="Book1-1/description"/> </font></th>
	</tr>
</table><hr/><br/>
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



</xsl:stylesheet>

