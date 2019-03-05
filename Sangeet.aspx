﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sangeet.aspx.cs" Inherits="songs_Sangeet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Balubhailagangeet.com</title>
<meta name="keywords" content="music note, free template, website template, CSS, XHTML" />
<meta name="description" content="Music Note - free CSS template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
<!--
    var image1 = new Image()
    image1.src = "images/wed_img_1.jpg"
    var image2 = new Image()
    image2.src = "images/wed_img_2.jpg"
    var image3 = new Image()
    image3.src = "images/wed_img_3.jpg"
    var image4 = new Image()
    image4.src = "images/wed_img_4.jpg"
    var image5 = new Image()
    image5.src = "images/wed_img_10.jpg"
    var image6 = new Image()
    image6.src = "images/wed_img_6.jpg"
//--></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="templatemo_container_wrapper">
<div id="templatemo_container">

	<div id="templatemo_top">
		<a href="Home.aspx">Home</a> | <a href="#"> Contact Us</a>
	</div>
    
    <div id="templatemo_header">
		<div id="templatemo_site_title">Balubhai<span>lagangeet.com</span></div>
        <div id="templatemo_site_slogan">Your slogan text goes here</div>
	</div>
    
	<div id="templatemo_menuleft"></div>    
	<div id="templatemo_menu">
        <ul>
			<li><a href="Home.aspx" class="current">Home</a></li>
   			<li><a href="#">Songs Category</a>
            <ul>
            <li><a href="Sangeet.aspx">Sangeet</a></li>
            <li><a href="Reception.aspx">Reception</a></li>
            <li><a href="Discodandiya.aspx">Disco Dandiya</a></li>
            </ul>
            </li>
			<li><a href="#">About Us</a></li>
            <!--<li><a href="#">Promotions</a></li>
            <li><a href="#">About Us</a></li>-->
            <li><a href="#">Contact Us</a></li>
        </ul>    	
    </div>
    
	<div id="templatemo_content">
		<div id="templatemo_left_column">
        	<div class="templatemo_section2">
            <marquee direction="up" width="200px">
            	<img src="images/wed_img_7.jpg" alt="image7" width="180px">
                <img src="images/wed_img_10.jpg" alt="image10" width="180px" >
            </marquee>
            </div>
            &nbsp;
            <div class="templatemo_section2">
            	<marquee direction="up" width="200px">
            	
                <img src="images/wed_img_8.jpg" alt="image8" width="180px" >
                <img src="images/wed_img_9.jpg" alt="image9" width="180px" >
                
            </marquee>
                    </div>
            &nbsp;<!--<a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
<a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a><br />&nbsp;-->
            </div>
        
		<div id="templatemo_right_column">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True">
                <Columns>
                    
                    <asp:BoundField DataField="fname" HeaderText="File Name" 
                        SortExpression="fname"/>
                    
                    <asp:TemplateField HeaderText="Play Online">
                     <ItemTemplate>
                    <audio runat="server" id="ad1" controls>
                     <source src='<%# Eval("url") %>' type="audio/mpeg">
                        Your browser does not support the audio element.
                    </audio>
                </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Download">
                     <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Download</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
           
		    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:lagan %>" 
                
                
                SelectCommand="SELECT * FROM [Audio] WHERE ([catagory] = @catagory)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Sangeet" Name="catagory" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
           
		</div>
	</div>
	<div id="templatemo_footer">
		<a href="#">Home</a> | <a href="#">About Us</a> | <a href="#">Prices</a> | <a href="#">Member</a> | <a href="#">Contact Us</a><br />
        Copyright © 2048 <a href="#">Your Company Name</a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_blank">templatemo.com</a>
	</div>

</div>
</div>
<div align=center><!--This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a>-->
</div>
    </form>
</body>
</html>
