<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:n1="http://www.ieee.org/ATML/2007/TestResults" xmlns:c="http://www.ieee.org/ATML/2006/Common" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" id="TS4.2.0">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<head/>
			<body>
				<font face="VERDANA">
					<h3>ATML Test Report</h3>
					<hr size="2" align="left" width="87%">
						<xsl:attribute name="COLOR">#0000FF</xsl:attribute>
					</hr>
					<xsl:apply-templates select="n1:TestResults"/>
					<hr size="2" align="left" width="87%">
						<xsl:attribute name="COLOR">#0000FF</xsl:attribute>
					</hr>
				</font>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="n1:TestResults">
		<font size="2">
			<xsl:apply-templates select="n1:TestStation"/>
			<xsl:apply-templates select="n1:Personnel"/>
			<xsl:apply-templates select="n1:UUT"/>
			<xsl:if test="@securityClassification">
				<b>Security Classification: </b>
				<xsl:value-of select="@securityClassification"/>
				<br/>	
			</xsl:if>		
			<xsl:apply-templates select="n1:TestDescription"/>
			<xsl:apply-templates select="n1:References"/>
			<xsl:apply-templates select="n1:ResultSet"/>
		</font>
	</xsl:template>
	<xsl:template match="n1:References">
		<ul>
			<li><b>References</b>: </li>
			<ul>
				<xsl:for-each select="n1:Reference">
					<li><b>Reference</b>:
						<ul>
								<li>UUID: <xsl:value-of select="@uuid"/> </li>
								<li>name: <xsl:value-of select="@name"/></li>	
								<xsl:if test="count(c:URL) = 1 or count(c:Text) = 1">
									<li><xsl:apply-templates/></li>								
								</xsl:if>	
						</ul>
					</li>
				</xsl:for-each>	
			</ul>
		</ul>
	</xsl:template>
	<xsl:template match="c:URL">
		URL: <xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="c:Text">
		Text: <xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="n1:TestStation">
		<b>TEST STATION: </b>
		<xsl:value-of select="c:SerialNumber"/>
		<br/>
	</xsl:template>
	<xsl:template match="n1:Personnel">
		<b>OPERATOR: </b>
		<xsl:value-of select="n1:SystemOperator/@ID"/>
		<br/>
	</xsl:template>
	<xsl:template match="n1:UUT">
		<b>UUT </b>
		: <xsl:value-of select="c:SerialNumber"/>
		<br/>
		<b>UUT Type</b>
		: <xsl:value-of select="@UutType"/>
		<br/>
	</xsl:template>
	<xsl:template match="n1:TestDescription">
		<xsl:if test="c:DescriptionDocumentReference/@uuid">
			<b>Test Description document reference: </b>
			<xsl:value-of select="c:DescriptionDocumentReference/@uuid"/>
			<br/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="n1:ResultSet">
		<b>RESULT SET </b>
		<xsl:if test="@ID != ''">
			(<xsl:value-of select="@ID"/>) 
		</xsl:if>				
		: <font color="brown">
			<xsl:value-of select="@name"/>
			<br/>
		</font>
		Date and Time Period: 			
		<font color="brown">
			<xsl:value-of select="@startDateTime"/>
		</font>
		through 
		<font color="brown">
			<xsl:value-of select="@endDateTime"/>
		</font>
		<br/> 
		Outcome: <b>
			<xsl:value-of select="n1:Outcome/@value"/>
			<xsl:if test="n1:Outcome/@qualifier">
				<br/>
				<xsl:value-of select="n1:Outcome/@qualifier"/>
			</xsl:if>
		</b>
		<xsl:choose>
			<xsl:when test="n1:TestGroup">
				<xsl:apply-templates select="n1:TestGroup"/>
			</xsl:when>
			<xsl:when test="n1:Test">
				<xsl:apply-templates select="n1:Test"/>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="n1:TestGroup">
		<ul>
			<li>
				<b>TestGroup</b>
				<xsl:if test="@ID != ''">
					(<xsl:value-of select="@ID"/>) 
				</xsl:if>				
				: <font color="brown">
					<xsl:value-of select="@name"/>
				</font>
			</li>
			<br/>
			Date and Time Period: 			
			<font color="brown">
				<xsl:value-of select="@startDateTime"/>
			</font>
			through 
			<font color="brown">
				<xsl:value-of select="@endDateTime"/>
			</font>
			<br/> 			
			Outcome: <b>
				<xsl:value-of select="n1:Outcome/@value"/>
				<xsl:if test="n1:Outcome/@qualifier">
					<br/>
					<xsl:value-of select="n1:Outcome/@qualifier"/>
				</xsl:if>
			</b>
			<xsl:apply-templates/>
		</ul>
		<br/>
	</xsl:template>
	<xsl:template match="n1:Test">
		<ul>
			<li>
				<b>
					<xsl:value-of select="@name"/>
				</b> Test (<xsl:value-of select="@ID"/>) :
			</li>
			<br/>
			Date and Time Period: 			
			<font color="brown">
				<xsl:value-of select="@startDateTime"/>
			</font>
			through 
			<font color="brown">
				<xsl:value-of select="@endDateTime"/>
				<br/>
			</font>
			Outcome: 
			<b>
				<xsl:value-of select="n1:Outcome/@value"/>
				<xsl:if test="n1:Outcome/@qualifier">
					<br/>
					<xsl:value-of select="n1:Outcome/@qualifier"/>
				</xsl:if>
			</b>
			<br/>
			<xsl:if test="n1:Description">
			
				<xsl:call-template name="Description">
					<xsl:with-param name="description" select="n1:Description"/>
				</xsl:call-template>
			</xsl:if>	
			<xsl:apply-templates select="n1:Events/n1:Event"/>
			<xsl:apply-templates select="n1:Parameters"/>
			<xsl:apply-templates select="n1:TestResult"/>
		</ul>
		<br/>
	</xsl:template>
	<xsl:template match="n1:SessionAction">
		<ul>
			<li>
				<b>
					<xsl:value-of select="@name"/>
				</b> Test (<xsl:value-of select="@ID"/>) :
			</li>
			<br/>
			Date and Time Period: 			
			<font color="brown">
				<xsl:value-of select="@startDateTime"/>
			</font>
			through 
			<font color="brown">
				<xsl:value-of select="@endDateTime"/>
				<br/>
			</font>
			Outcome: 
			<b>
				<xsl:value-of select="n1:ActionOutcome/@value"/>
				<xsl:if test="n1:ActionOutcome/@qualifier">
					<br/>
					<xsl:value-of select="n1:ActionOutcome/@qualifier"/>
				</xsl:if>
			</b>
			<br/>
			<xsl:if test="n1:Description">
				<xsl:call-template name="Description">
					<xsl:with-param name="description" select="n1:Description"/>
				</xsl:call-template>
			</xsl:if>	
			<xsl:apply-templates select="n1:Parameters"/>
			<xsl:apply-templates select="n1:Data"/>
		</ul>
		<br/>
	</xsl:template>
	<xsl:template match="n1:Data">
		<xsl:if test="c:Collection/c:Item">
			<ul>
				<li>Data: </li>
				<br/>
				<xsl:apply-templates select="c:Collection"/>
			</ul>
		</xsl:if>
		<xsl:if test="c:Datum/c:Value">
			<ul>
				<li>Data: </li>
				<xsl:value-of select="c:Datum/c:Value"/>
			</ul>
		</xsl:if>
		<xsl:if test="c:Datum/@value">
			<ul>
				<li>Data: </li>
				<xsl:value-of select="c:Datum/@value"/>
			</ul>
		</xsl:if>
	</xsl:template>
	<xsl:template match="n1:Parameters">
		<xsl:if test="count(n1:Parameter)">
			<ul>
				<xsl:apply-templates select="n1:Parameter/n1:Data" mode="Parameter"/>
			</ul>
		</xsl:if>	
	</xsl:template>	
	<xsl:template match="n1:Parameter/n1:Data" mode="Parameter">
		<li><b>Parameter</b>: <font color="brown"><xsl:value-of select="../@ID"/></font></li>
		<xsl:if test="../n1:Description">
			<li>
				<xsl:call-template name="Description">
					<xsl:with-param name="description" select="../n1:Description"/>
				</xsl:call-template>
			</li>	
		</xsl:if>
		<xsl:if test="c:Collection/c:Item">
			<xsl:apply-templates select="c:Collection" mode="Parameter"/>
			<br/>
		</xsl:if>
		<xsl:if test="c:Datum">
			<xsl:apply-templates select="c:Datum" mode="Parameter"/>
			<br/>
		</xsl:if>
		<xsl:if test="c:IndexedArray">
			<xsl:apply-templates select="c:IndexedArray" mode="Parameter"/>
			<br/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="n1:TestResult">
		<ul>
			<li><b>TestResult</b>: <font color="brown">
					<xsl:value-of select="@ID"/>
				</font>
			</li>
			<br/>
			<xsl:if test="n1:Description">
				<li>
					<xsl:call-template name="Description">
						<xsl:with-param name="description" select="n1:Description"/>
					</xsl:call-template>
				</li>	
			</xsl:if>
			<xsl:apply-templates select="n1:TestData"/>
			<xsl:apply-templates select="n1:Transform"/>
			<xsl:apply-templates select="n1:TestLimits"/>
		</ul>
		<br/>
	</xsl:template>
	<xsl:template match="n1:Transform">
		<li>TestResult Transform:<xsl:value-of select="."/></li>
	</xsl:template>	
	<xsl:template match="n1:TestData">
		<xsl:apply-templates select="c:Datum"/>
		<xsl:apply-templates select="c:Collection"/>
		<xsl:apply-templates select="c:IndexedArray"/>
	</xsl:template>
	<xsl:template match="n1:TestLimits">
		<xsl:apply-templates select="n1:Limits"/>
	</xsl:template>
	<xsl:template match="n1:Limits">
		<xsl:apply-templates select="c:Expected"/>
		<xsl:apply-templates select="c:SingleLimit"/>
		<xsl:apply-templates select="c:LimitPair"/>
	</xsl:template>
	<xsl:template match="c:SingleLimit">
		<ul>
			<li>Limit Comparator: <font color="brown">
					<xsl:value-of select="@comparator"/>
				</font>
			</li>
			<br/>
			<xsl:variable name="unit">
				<xsl:call-template name="GetUnit">
					<xsl:with-param name="node" select="c:Datum"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:if test="c:Datum/@xsi:type = 'double'">
				<li>Limit Value Type: Double</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'unsignedInteger'">
				<li>Limit Value Type: Unsigned Integer</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'hexadecimal'">
				<li>Limit Value Type: Hexadecimal</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'integer'">
				<li>Limit Value Type: Integer</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'binary'">
				<li>Limit Value Type: Binary</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'octal'">
				<li>Limit Value Type: Octal</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'boolean'">
				<li>Limit Value Type: Boolean</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'string'">
				<li>Limit Value Type: String</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/c:Value"/>
				</li>
			</xsl:if>
		</ul>
	</xsl:template>
	<xsl:template match="c:LimitPair">
		<ul>
			<li>Limit Pair Operator: <font color="brown">
					<xsl:value-of select="@operator"/>
				</font>
			</li>
			<xsl:apply-templates select="c:Limit"/>
		</ul>
	</xsl:template>
	<xsl:template match="c:Limit">
		<ul>
			<li>Limit Comparator: <font color="brown">
					<xsl:value-of select="@comparator"/>
				</font>
			</li>
			<br/>
			<xsl:variable name="unit">
				<xsl:call-template name="GetUnit">
					<xsl:with-param name="node" select="c:Datum"/>
				</xsl:call-template>
			</xsl:variable>
			<xsl:if test="c:Datum/@xsi:type = 'double'">
				<li>Limit Value Type: Double</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'unsignedInteger'">
				<li>Limit Value Type: Unsigned Integer</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'hexadecimal'">
				<li>Limit Value Type: Hexadecimal</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'integer'">
				<li>Limit Value Type: Integer</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'binary'">
				<li>Limit Value Type: Binary</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'octal'">
				<li>Limit Value Type: Octal</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'boolean'">
				<li>Limit Value Type: Boolean</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/@value"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'string'">
				<li>Limit Value Type: String</li>
				<li>Limit Value: <xsl:value-of select="c:Datum/c:Value"/>
				</li>
			</xsl:if>
		</ul>
	</xsl:template>	
	<xsl:template match="c:Expected">
		<ul>
			<li>Expected Comparator: <xsl:value-of select="@comparator"/>
			</li>
			<xsl:variable name="unit">
				<xsl:call-template name="GetUnit">
					<xsl:with-param name="node" select="c:Datum"/>
				</xsl:call-template>
			</xsl:variable>
			
			<xsl:if test="c:Datum/@xsi:type = 'double'">
				<li>Expected Type: Double</li>
				<li>Expected Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'unsignedInteger'">
				<li>Expected Type: Unsigned Integer</li>
				<li>Expected Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'hexadecimal'">
				<li>Expected Type: Hexadecimal</li>
				<li>Expected Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'integer'">
				<li>Expected Type: Integer</li>
				<li>Expected Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'binary'">
				<li>Expected Type: Binary</li>
				<li>Expected Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'octal'">
				<li>Expected Type: Octal</li>
				<li>Expected Value: <xsl:value-of select="c:Datum/@value"/>&#160; <xsl:value-of select="$unit"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'boolean'">
				<li>Expected Type: Boolean</li>
				<li>Expected Value: <xsl:value-of select="c:Datum/@value"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Datum/@xsi:type = 'string'">
				<li>Expected Type: String</li>
				<xsl:if test="c:Datum/c:Value !='' ">
					<li>Expected Value: <xsl:value-of select="c:Datum/c:Value"/>
					</li>
				</xsl:if>
				<xsl:if test="c:Datum/c:Value ='' ">
					<li>Expected Value: ''</li>
				</xsl:if>
			</xsl:if>
		</ul>
	</xsl:template>
	<xsl:template match="n1:Events/n1:Event">
		<xsl:if test="@source != '' or @severity != '' ">
			<ul>
				<li>
					<b>Event: </b>
					<xsl:value-of select="@ID"/>
				</li>
				<xsl:if test="@source != ''">
					<li>Source: <xsl:value-of select="@source"/>
					</li>
				</xsl:if>
				<xsl:if test="@severity != ''">
					<li>Severity: <xsl:value-of select="@severity"/>
					</li>
				</xsl:if>
			</ul>
			<xsl:apply-templates select="n1:Data"/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="c:Collection">
		<xsl:apply-templates select="c:Item" />
	</xsl:template>	
	<xsl:template match="c:Item">
		<ul>
			<li>Item Name: <font color="brown">
					<xsl:value-of select="@name"/>
				</font>
			</li>
			<xsl:apply-templates/>
		</ul>
		<br/>
	</xsl:template>
	<xsl:template match="c:Datum">
		<xsl:variable name="unit">
				<xsl:call-template name="GetUnit">
					<xsl:with-param name="node" select="."/>
				</xsl:call-template>
			</xsl:variable>
		<xsl:if test="@xsi:type ='double'">
			<xsl:if test="@value != ''">
				<li>TestResult Type: Double</li>
				<li>TestResult Value: <xsl:value-of select="@value"/>&#160;<xsl:value-of select="$unit"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type ='integer'">
			<xsl:if test="@value != ''">
				<li>TestResult Type: Integer</li>
				<li>TestResult Value: <xsl:value-of select="@value"/>&#160;<xsl:value-of select="$unit"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type ='binary'">
			<xsl:if test="@value != ''">
				<li>TestResult Type: Binary</li>
				<li>TestResult Value: <xsl:value-of select="@value"/>&#160;<xsl:value-of select="$unit"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type ='hexadecimal'">
			<xsl:if test="@value != ''">
				<li>TestResult Type: Hexadecimal</li>
				<li>TestResult Value: <xsl:value-of select="@value"/>&#160;<xsl:value-of select="$unit"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type ='octal'">
			<xsl:if test="@value != ''">
				<li>TestResult Type: Octal</li>
				<li>TestResult Value: <xsl:value-of select="@value"/>&#160;<xsl:value-of select="$unit"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type ='unsignedInteger'">
			<xsl:if test="@value != ''">
				<li>TestResult Type: Unsigned Integer</li>
				<li>TestResult Value: <xsl:value-of select="@value"/>&#160;<xsl:value-of select="$unit"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type ='boolean'">
			<xsl:if test="@value != ''">
				<li>TestResult Type: Boolean</li>
				<li>TestResult Value: <xsl:value-of select="@value"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'string'">
			<li>TestResult Type: String</li>
			<xsl:if test="c:Value != ''">
				<li>TestResult Value: <xsl:value-of select="c:Value"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Value = ''">
				<li>TestResult Value: ''</li>
			</xsl:if>
			<br/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="c:IndexedArray">
		<xsl:if test="@xsi:type = 'doubleArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>TestResult Type: Double Array</li>
				<li>TestResult Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'hexadecimalArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>TestResult Type: Hexadecimal Array</li>
				<li>TestResult Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'booleanArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>TestResult Type: Boolean Array</li>
				<li>TestResult Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'integerArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>TestResult Type: Integer Array</li>
				<li>TestResult Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'unsignedIntegerArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>TestResult Type: Unsigned Integer Array</li>
				<li>TestResult Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'octalArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>TestResult Type: Octal Array</li>
				<li>TestResult Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'stringArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>TestResult Type: String Array</li>
				<li>TestResult Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:if test="c:Value != ''">
											<xsl:value-of select="c:Value"/> 
									&#160;
								</xsl:if>
										<xsl:if test="c:Value = ''">
									&#160;
								</xsl:if>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'binaryArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>TestResult Type: Binary Array</li>
				<li>TestResult Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
	</xsl:template>
	<xsl:template name="GetUnit">
		<xsl:param name="node"/>
			<xsl:choose>
				<xsl:when test="$node/@unit"><xsl:value-of select="$node/@unit"/></xsl:when>
				<xsl:when test="$node/@nonStandardUnit"><xsl:value-of select="$node/@nonStandardUnit"/></xsl:when>
				<xsl:otherwise></xsl:otherwise>
			</xsl:choose>	
	</xsl:template> 
	<xsl:template match="c:IndexedArray" mode="Parameter">
		<xsl:if test="@xsi:type = 'doubleArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>Parameter Type: Double Array</li>
				<li>Parameter Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'hexadecimalArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>Parameter Type: Hexadecimal Array</li>
				<li>Parameter Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'booleanArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>Parameter Type: Boolean Array</li>
				<li>Parameter Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'integerArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>Parameter Type: Integer Array</li>
				<li>Parameter Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'unsignedIntegerArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>Parameter Type: Unsigned Integer Array</li>
				<li>Parameter Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'octalArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>Parameter Type: Octal Array</li>
				<li>Parameter Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'stringArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>Parameter Type: String Array</li>
				<li>Parameter Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:if test="c:Value != ''">
											<xsl:value-of select="c:Value"/> 
									&#160;
								</xsl:if>
										<xsl:if test="c:Value = ''">
									&#160;
								</xsl:if>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'binaryArray'">
			<xsl:if test="@dimensions != '[0]'">
				<li>Parameter Type: Binary Array</li>
				<li>Parameter Value:</li>
				<table cellpadding="0" cellspacing="0" rules="all" width="25%" border="1">
					<tbody>
						<tr>
							<th width="15%" align="center">
								<font size="2"> Element Position </font>
							</th>
							<th width="10%" align="center">
								<font size="2"> Value </font>
							</th>
						</tr>
						<xsl:for-each select="c:Element">
							<tr>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@position"/>
									</font>
								</td>
								<td align="center">
									<font size="2">
										<xsl:value-of select="@value"/>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:if>
	</xsl:template>
	<xsl:template match="c:Datum" mode="Parameter">
		<xsl:variable name="unit">
				<xsl:call-template name="GetUnit">
					<xsl:with-param name="node" select="."/>
				</xsl:call-template>
			</xsl:variable>
		<xsl:if test="@xsi:type ='double'">
			<xsl:if test="@value != ''">
				<li>Parameter Type: Double</li>
				<li>Parameter Value: <xsl:value-of select="@value"/>&#160;<xsl:value-of select="$unit"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type ='integer'">
			<xsl:if test="@value != ''">
				<li>Parameter Type: Integer</li>
				<li>Parameter Value: <xsl:value-of select="@value"/>&#160;<xsl:value-of select="$unit"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type ='binary'">
			<xsl:if test="@value != ''">
				<li>Parameter Type: Binary</li>
				<li>Parameter Value: <xsl:value-of select="@value"/>&#160;<xsl:value-of select="$unit"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type ='hexadecimal'">
			<xsl:if test="@value != ''">
				<li>Parameter Type: Hexadecimal</li>
				<li>Parameter Value: <xsl:value-of select="@value"/>&#160;<xsl:value-of select="$unit"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type ='octal'">
			<xsl:if test="@value != ''">
				<li>Parameter Type: Octal</li>
				<li>Parameter Value: <xsl:value-of select="@value"/>&#160;<xsl:value-of select="$unit"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type ='unsignedInteger'">
			<xsl:if test="@value != ''">
				<li>Parameter Type: Unsigned Integer</li>
				<li>Parameter Value: <xsl:value-of select="@value"/>&#160;<xsl:value-of select="$unit"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type ='boolean'">
			<xsl:if test="@value != ''">
				<li>Parameter Type: Boolean</li>
				<li>Parameter Value: <xsl:value-of select="@value"/>
				</li>
				<br/>
			</xsl:if>
		</xsl:if>
		<xsl:if test="@xsi:type = 'string'">
			<li>Parameter Type: String</li>
			<xsl:if test="c:Value != ''">
				<li>Parameter Value: <xsl:value-of select="c:Value"/>
				</li>
			</xsl:if>
			<xsl:if test="c:Value = ''">
				<li>Parameter Value: ''</li>
			</xsl:if>
			<br/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="c:Collection" mode="Parameter">
		<xsl:apply-templates select="c:Item" mode="Parameter" />
	</xsl:template>
	<xsl:template match="c:Item" mode="Parameter">
		<ul>
			<li>Item Name: <font color="brown">
					<xsl:value-of select="@name"/>
				</font>
			</li>
			<xsl:apply-templates mode="Parameter"/>
		</ul>
		<br/>
	</xsl:template>
	<xsl:template name="Description">
		<xsl:param name="description"/>
		<b>Description</b>: <xsl:value-of select="$description"/>
		<br/>
	</xsl:template>
</xsl:stylesheet>
