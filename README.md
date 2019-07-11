# loopback

Loopback versioon - 3.x link: https://www.npmjs.com/package/loopback<br>
Strongloop: https://www.npmjs.com/package/strongloop <br><br>

Reference for Strongloop: https://github.com/dushyant97/strongloop <br>
Reference for Loopback V3: https://github.com/dushyant97/loopback-1 <br>

Queries for LoopBack:<br/>

//write queries in GET  <br/>

{"limit" : 2} <br/>
{"where" : {"name" : "Dushyant"}} <br/>
{"where" : {"empNo" : {"gt": 1}}} <br/>
{"where" : {"empNo" : {"gt": 1} , "name" : "Dushyant"}} <br/>
{"fields" : {"name" : false, "age" : false}}	//will not show name and age    <br/>
{ "order": "empNo DESC" }	//aranges in DESC <br/>
{ "skip": 2 }	//skips first two result  <br/>
{"include":{"rel":"customer"}}  <br/>
{"include":{"rel":"customer"},"where" :{"id":1}}  <br/>
{"include":{"rel":"link"},"where":{"id":1}} <br/>

http://localhost:3000/api/Employees?filter[limit]=2&filter[where][name]=Dushyant  <br/>

operator:
https://loopback.io/doc/en/lb2/Where-filter.html  <br/>
