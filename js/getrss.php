<!--
PHP Example - AJAX RSS Reader

https://www.w3schools.com/php/php_ajax_rss_reader.asp

AJAX RSS Reader

The following example will demonstrate an RSS reader, where the RSS-feed is loaded into a webpage without reloading:
getrss.html
-->

<?php
//get the q parameter from URL
$q=$_GET["q"];

//find out which feed was selected
if($q=="rtve") {
  $xml=("https://api2.rtve.es/rss/temas_ciencia-tecnologia.xml");
} elseif($q=="educacion") {
  $xml=("http://www.juntadeandalucia.es/educacion/portals/delegate/rss/ced/portalconsejeria/alumnado/-/-/false/OR/true/ishare_noticefrom/DESC/");
} elseif($q=="Xataka") {
  $xml=("http://feeds.weblogssl.com/xataka2");
} elseif($q=="Microsiervos") {
  $xml=("http://www.microsiervos.com/index.xml");
} elseif($q=="DiarioJaen") {
  $xml=("http://www.diariojaen.es/rss/jaen.xml");
}

$xmlDoc = new DOMDocument();
$xmlDoc->load($xml);

//get elements from "<channel>"
$channel=$xmlDoc->getElementsByTagName('channel')->item(0);
$channel_title = $channel->getElementsByTagName('title')
->item(0)->childNodes->item(0)->nodeValue;
$channel_link = $channel->getElementsByTagName('link')
->item(0)->childNodes->item(0)->nodeValue;
$channel_desc = $channel->getElementsByTagName('description')
->item(0)->childNodes->item(0)->nodeValue;

//output elements from "<channel>"
echo("<p><a href='" . $channel_link
  . "'>" . $channel_title . "</a>");
echo("<br>");
echo($channel_desc . "</p>");

//get and output "<item>" elements
$x=$xmlDoc->getElementsByTagName('item');
for ($i=0; $i<=2; $i++) {
  $item_title=$x->item($i)->getElementsByTagName('title')
  ->item(0)->childNodes->item(0)->nodeValue;
  $item_link=$x->item($i)->getElementsByTagName('link')
  ->item(0)->childNodes->item(0)->nodeValue;
  $item_desc=$x->item($i)->getElementsByTagName('description')
  ->item(0)->childNodes->item(0)->nodeValue;
  echo ("<p><a href='" . $item_link
  . "'>" . $item_title . "</a>");
  echo ("<br>");
  echo ($item_desc . "</p>");
}
?> 
