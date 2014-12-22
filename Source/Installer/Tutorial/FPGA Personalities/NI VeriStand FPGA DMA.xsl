<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	  <header>
	  	<title>FPGA DMA Configuration</title>
	  </header>
	  <body style="font-family:Arial;font-size:12pt;background-color:white">
	  	<h1>FPGA DMA Configuration</h1>
	  	<h2>Content</h2>
	  	<ul><a href="#Bitfile">Bitfile Name</a></ul>
	  	<ul><a href="#Categories">Categories</a></ul>
	  	<ul><a href="#DMARead">DMA Read Channels</a></ul>
	  	<ul><a href="#DMAWrite">DMA Write Channels</a></ul>
	  	<h2><a name="Bitfile"/>Bitfile Name</h2>
	  	<p>
		  	<xsl:choose>
	  			<xsl:when test="not(FPGADMAChannelData/Bitfile)">
	  				Bitfile name has same name as filename of FPGA DMA Configuration file.
	  			</xsl:when>
				<xsl:otherwise>
	    			<xsl:value-of select="FPGADMAChannelData/Bitfile"/>
	  			</xsl:otherwise>
			</xsl:choose>
		</p>
	  	<h2><a name="Categories"/>Categories</h2>
	  	<ul>
	  		<xsl:for-each select="FPGADMAChannelData/Categories">
	  			<xsl:apply-templates select="Category"/>
	  		</xsl:for-each>
	  	</ul>
	  	<xsl:for-each select="FPGADMAChannelData/DMA_Read">
	  			<xsl:apply-templates select="." mode="DMAChannel"/>
	  	</xsl:for-each>
	  	<xsl:for-each select="FPGADMAChannelData/DMA_Write">
	  			<xsl:apply-templates select="." mode="DMAChannel"/>
	  	</xsl:for-each>
	  </body>
	</html>
</xsl:template>

<xsl:template match="*" mode="DMAChannel">
		<xsl:variable name="dmaDirection" select="name()"/>
		<xsl:choose>
				<xsl:when test="name() = 'DMA_Read'">
					<h2><a name="DMARead"/>DMA Read Channel</h2>
				</xsl:when>
		       	<xsl:otherwise>
		       		<h2><a name="DMAWrite"/>DMA Write Channel</h2>
		       	</xsl:otherwise>			
		</xsl:choose>			
	
	  	<p>
	  		<strong>Number of Packets: </strong><xsl:value-of select="Packets"/>
	  	</p>
	  	<p>
	  		<strong>Channel Bit Packing:</strong>
	  	
	  	<table border="1" bgcolor="#82CAFF">
	  		<tr>
	  			<th>Byte</th>
	  			<th colspan="8">0</th>
	  			<th colspan="8">1</th>
	  			<th colspan="8">2</th>
	  			<th colspan="8">3</th>
	  			<th colspan="8">4</th>
	  			<th colspan="8">5</th>
	  			<th colspan="8">6</th>
	  			<th colspan="8">7</th>
	  		</tr>
	  		<tr>
	  			<th>Bit</th>
	  			<th>0</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th>
	  			<th>0</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th>
	  			<th>0</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th>
	  			<th>0</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th>
	  			
	  			<th>0</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th>
	  			<th>0</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th>
	  			<th>0</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th>
	  			<th>0</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th>
	  		</tr>
	  	  	<xsl:for-each select="Packet">
	  	  	<xsl:variable name="packetnum" select="position()"/>
	  			<tr>
			  		<th>Packet <xsl:number value="$packetnum" format="1"/></th>
			  		<xsl:for-each select="*">
		       			<xsl:element name="td">
		       				<xsl:attribute name="colspan">
		       					<xsl:choose>
		       						<xsl:when test="name() = 'Boolean'">1</xsl:when>
		       						<xsl:when test="name() = 'U8'">8</xsl:when>
		       						<xsl:when test="name() = 'I8'">8</xsl:when>
		       						<xsl:when test="name() = 'I16'">16</xsl:when>
		       						<xsl:when test="name() = 'U16'">16</xsl:when>
		       						<xsl:when test="name() = 'I32'">32</xsl:when>
		       						<xsl:when test="name() = 'U32'">32</xsl:when>
		       						<xsl:when test="name() = 'PWM'">64</xsl:when>
		       						<xsl:when test="name() = 'FXPI32'">32</xsl:when>
		       						<xsl:when test="name() = 'FXPU32'">32</xsl:when>
		       						<xsl:when test="name() = 'FXPI64'">64</xsl:when>
		       						<xsl:when test="name() = 'FXPU64'">64</xsl:when>
		       						<xsl:when test="name() = 'Void'"><xsl:value-of select="Size"/></xsl:when>
		       						<xsl:otherwise>1</xsl:otherwise>
		       					</xsl:choose>
		       				</xsl:attribute>
		       				<xsl:attribute name="bgcolor">
		       					<xsl:choose>
		       						<xsl:when test="name() = 'Void'">#98AFC7</xsl:when>
		       						<xsl:when test="position() mod 2 = 1">white</xsl:when>
		       						<xsl:otherwise>white</xsl:otherwise>
		       					</xsl:choose>
		       				</xsl:attribute>
		       				<xsl:element name="a">
	       						<xsl:attribute name="href">#<xsl:copy-of select="$dmaDirection" />P<xsl:number value="$packetnum"/>C<xsl:number value="position()"/></xsl:attribute>
			       				<xsl:choose>
			       					<xsl:when test="name() = 'Boolean'">B</xsl:when>
			       					<xsl:when test="name() = 'Void'">
			       						<xsl:choose>
			       							<xsl:when test="Size &lt; 4">V</xsl:when>
			       							<xsl:otherwise>Void</xsl:otherwise>
			       						</xsl:choose>
			       					</xsl:when>
			       					<xsl:otherwise><xsl:value-of select="name()"/></xsl:otherwise>
			       				</xsl:choose>
			       			</xsl:element>
				       		<xsl:if test="name() = 'PWM'">
				       			 --- Low Time / High Time
				       		</xsl:if>	
			       		</xsl:element>
	       			</xsl:for-each>
       			</tr>
	        </xsl:for-each>
	     </table>
	     </p>
	     <p><strong>Channel Details:</strong>
	  	<table border="1">
	  	  	<xsl:for-each select="Packet">
	  	  	<xsl:variable name="packetnum" select="position()"/>
	  		<tr>
		  		<th colspan="2" bgcolor="grey">Packet <xsl:number value="$packetnum" format="1"/></th>
	  		</tr>
	  				<tr bgcolor="#82CAFF">
	  					<th/>
	  					<th>Name</th>
						<th>Rep</th>
						<th>Units</th>
						<th>Scale</th>
						<th>Offset</th>
						<th>FXPWL</th>
						<th>FXPIWL</th>
						<th>PWM Period</th>
					</tr>
	       			<xsl:for-each select="*">
       					<xsl:choose>
       						<xsl:when test="name() = 'Void'">
       							<tr>
       								<td/>
       								<td><xsl:element name="a">
				       						<xsl:attribute name="name"><xsl:copy-of select="$dmaDirection" />P<xsl:number value="$packetnum"/>C<xsl:number value="position()"/></xsl:attribute>
				       					</xsl:element>
			       						<xsl:value-of select="name()"/></td>
			       					<td colspan="7">
			       						Size: <xsl:value-of select="Size"/></td>
			       				</tr>
       						</xsl:when>
       						<xsl:otherwise>
			       				<tr>
		       						<td rowspan="2"/>
		       						<td><xsl:element name="a">
				       						<xsl:attribute name="name"><xsl:copy-of select="$dmaDirection" />P<xsl:number value="$packetnum"/>C<xsl:number value="position()"/></xsl:attribute>
				       					</xsl:element>
			       						<xsl:value-of select="Name"/></td>
			       					<td><xsl:value-of select="name()"/></td>
			       					<td><xsl:value-of select="Unit"/></td>
			       					<td><xsl:value-of select="Scale"/></td>
			       					<td><xsl:value-of select="Offset"/></td>
			       					<td><xsl:value-of select="FXPWL"/></td>
			       					<td><xsl:value-of select="FXPIWL"/></td>
			       					<td><xsl:value-of select="PWMPeriod"/></td>
			       				</tr>
			       				<tr>
			       					<td></td>
			       					<td colspan="7">
			       						Category: <xsl:value-of select="Category"/><br/>
			       						Description: <xsl:value-of select="Description"/>
			       					</td>
			       				</tr>
		       				</xsl:otherwise>
       					</xsl:choose>
	       			</xsl:for-each>
	       			
	        </xsl:for-each>
	     </table>
	     </p>
</xsl:template>


<xsl:template match="Category">
	<li><strong><xsl:value-of select="Name"/></strong>
		<xsl:if test="Description != ''">
			- "<xsl:value-of select="Description"/>"
		</xsl:if>
		<ul>
			<xsl:apply-templates select="Category"/>
		</ul>
	</li>
</xsl:template>

</xsl:stylesheet>
			