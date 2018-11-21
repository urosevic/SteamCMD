<!-- :: Batch section
@echo off
setlocal

echo Select an option:
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
echo End of HTA window, reply: "%HTAreply%"
goto :EOF

@echo off
-->


<html>
<head>
<!-- HTA:APPLICATION SCROLL="no" SYSMENU="no"  -->
<hta:application border="none" caption="no" id="kf2slauncher" innerborder="no" maximizebutton="no" minimizebutton="no" scroll="no" showintaskbar="no" singleinstance="yes" systemmenu="no">
<title>Killing Floor 2 Server Launcher</title>
<style>
body {
	padding-top: 140px;
	color: #fff;
	font-family: HelveticaNeue, Helvetica, Arial, "Lucida Grande", sans-serif;
	background-color: black;
	background-origin: content-box;
	background-image: url(http://www.killingfloor2.com/media/1710/kf2_bg.jpg);
	background-position: -580px -180px;
	background-repeat: no-repeat;
}
.optionBox,
.commandBox {
	text-align: center;
}
.optionBox {
	box-sizing: border-box;
	width: 398px;
	height: 250px;
	float: left;
	margin: 20px 10px;
	/*padding: 10px;*/
	display: block;
	/*border: 1px solid red;*/
}
.commandBox {
	width: 100%;
	margin: 0;
	padding: 0;
	/*border: 1px solid gold;*/
	float: left;
}
h3 {
	color: #bd0000;
	margin: 0;
	font-size: 2em;
}
button, .button span {
	font-size: 20px;
	font-weight: 900;
	width: 250px;
	margin: 5px 0 0 0;
	padding: 5px;
	background-color: #bd0000;
	color: #faa950;
	border: none;
	cursor: pointer;
}
button:active {
	color: blue!important;
}
.button {
	display: block;
	clear: both;
}
input[type="radio"]:checked+span {
	color: blue!important;
	background-color:gold;
}
</style>
<script language="JavaScript">
var dlgWidth = 860;
var dlgHeight = 560;
window.resizeTo(dlgWidth, dlgHeight);
window.moveTo((screen.width-dlgWidth)/2,(screen.height-dlgHeight)/2);
function setDificulty(reply){
	window.document.getElementById('diff'+reply).className('active');
	window.diff.value = reply;
   //var fso = new ActiveXObject("Scripting.FileSystemObject");
   //fso.GetStandardStream(1).WriteLine(reply);
}

function setLength(reply){
	window.len.value = reply;
   //var fso = new ActiveXObject("Scripting.FileSystemObject");
   //fso.GetStandardStream(1).WriteLine(reply);
}

function launch(){
   //alert(window.diff.value);
   window.close();
}
</script>
</head>
<body>

<div id="difficulty" class="optionBox">
<h3>Difficulty</h3><br />
<label class="button"><input type="radio" name="radioDiff" value="0"> <span>Normal</span></label>
<label class="button"><input type="radio" name="radioDiff" value="1"> <span>Hard</span></label>
<label class="button"><input type="radio" name="radioDiff" value="2"> <span>Suicidal</span></label>
<label class="button"><input type="radio" name="radioDiff" value="3"> <span>Hell on Earth</span></label>
<!--
<button name="diff0" id="diff0" onclick="setDificulty(0);">Normal</button><br />
<button name="diff1" id="diff1" onclick="setDificulty(1);">Hard</button><br />
<button name="diff2" id="diff2" onclick="setDificulty(2);">Suicidal</button><br />
<button class="test" name="diff3" id="diff3" onclick="setDificulty(3);">Hell on Earth</button>
-->
</div>

<div id="length" class="optionBox">
<h3>Length</h3><br />
<button name="len0" onclick="setLength(0);">Short (4 Waves)</button><br />
<button name="len1" onclick="setLength(1);">Medium (7 Waves)</button><br />
<button name="len2" onclick="setLength(2);">Long (10 Waves)</button>
</div>

<div id="launch" class="commandBox">
<label>diff:</label> <input type="text" name="diff" value="5" /> | <label>len:</label> <input type="text" name="len" /><br />
<button onclick="launch();">Launch Game Server</button>
</div>
<script language="JavaScript">
//window.diff3.setAttribute("class", "active");
//alert(window.diff3.getAttribute("class"));
</script>
</body>
</html>