<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/publishing_house">
<html>
		<head>
			<style>
				h1 {
					color: #197519;
					font-size: 350%;
					text-align: center;

				}
				h2 {
					font-size: 250%;
					color: white;
					text-align: center;
				}
				
				body {
					font-family: "Helvetica Neue";
					font-size: 72.5%;
					background: #2B2B2B;

					}
				img {
					width: 120px;
					height: 155px;
					padding-right: 10px;
				}

				p {
					font-size: 150%;
					height: 205px;
					color: #309830;
					width: 100px;	
				}

				th {
					font-size: 165%;
					text-align: center;
				}
				div.column {
					width: 455px;
					height: 175px;
					margin: 20px;
					overflow: auto;
   				 	-moz-column-fill: auto;
   					column-fill: auto;
				}
				
				table { 
					width: 100%;
					border-collapse: collapse; 
					font-family: "Helvetica Neue";
        			background: #585858;
        			font-size: 13px;
       				color: white;
				}
				/* Zebra striping */
					tr:nth-of-type(odd) { 
					background: #B9B9B9;
					color: black;
				}	
				h6 {
				color: white;
				text-align: left;
				font-size: 125%;
				}

			</style>


		</head>

<body>
	<h1><font face="Bangla Sangam MN"> 47North Authors</font></h1>
	<h2> Fiction </h2>
	<div id="users">
	<button class="sort" data-sort="name">
    Sort by name
  	</button>
	<table>
		<tbody class="list">
		<tr>
			<th><font face="Bangla Sangam MN">Author</font></th>
			<th><font face="Bangla Sangam MN">Picture</font></th>
			<th><font face="Bangla Sangam MN">Author Biography</font></th>
			<th><font face="Bangla Sangam MN">Book</font></th>
			<th><font face="Bangla Sangam MN">Book Description</font></th>	
		</tr>
		
		<xsl:for-each select="author">
		<tr>
			
			<td class="name"><p><b><font face="Helvetica Neue"><xsl:value-of select="name/author_last_name" />, <xsl:value-of select="name/author_first_name" /></font></b></p></td>
			<td><xsl:for-each select="picture">
				<a href="{image/url/@url}"><img src="{image/@source}.jpg" /></a></xsl:for-each></td>

			<div class="column">
			<td><xsl:value-of select="biography" />
		
			<h6><xsl:for-each select="homepages">
				<a><xsl:attribute name="href">
					<xsl:value-of select="url" /></xsl:attribute>Link</a></xsl:for-each></h6></td>
					</div>

			<td><p><xsl:for-each select="book_cover">
				<a href="{image/url/@url}"><img src="{image/@source}.jpg" /></a></xsl:for-each></p></td>
			<div class="column">
			<td><xsl:value-of select="book_description" /></td>
			</div>
			
		</tr>
		</xsl:for-each>
	</tbody>
	</table>
</div>
	<footer>
		<h6>47North Website: <a href="https://www.apub.com/home">47North</a></h6>
		<h6>Project Two By: Lindsay Warner</h6>
		<h6>Contact Me: lindsaywarner@my.unt.edu</h6>
	</footer>
	<script src="http://listjs.com/no-cdn/list.js"></script>
	<script>
		var options = {
  valueNames: ['name']
};

var userList = new List('users', options);
	</script>

</body>
</html>

</xsl:template>
</xsl:stylesheet>

