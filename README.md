# loopback

Queries for LoopBack:

			LOOPBACK QUERIES

//write queries in GET

{"limit" : 2}
{"where" : {"name" : "Dushyant"}}
{"where" : {"empNo" : {"gt": 1}}}
{"where" : {"empNo" : {"gt": 1} , "name" : "Dushyant"}}
{"fields" : {"name" : false, "age" : false}}	//will not show name and age
{ "order": "empNo DESC" }	//aranges in DESC
{ "skip": 2 }	//skips first two result
{"include":{"rel":"customer"}}
{"include":{"rel":"customer"},"where" :{"id":1}}
{"include":{"rel":"link"},"where":{"id":1}}

http://localhost:3000/api/Employees?filter[limit]=2&filter[where][name]=Dushyant

operator:
https://loopback.io/doc/en/lb2/Where-filter.html
