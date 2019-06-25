'use strict';

module.exports = function(Order) {
  
    
/**
 * prints message
 * @param {string} msg enter the message
 * @param {Function(Error)} callback
 */

Order.greet = function(msg, callback) {
    
    if (msg =""){
        
        var a = {
        message  :   `String is empty`,
        StatusCode : "900"
         };
        callback(a);
    }

    var result ={
        status: `The message is : ${msg}`
    }

    callback(null,result);
  };

  Order.operation = function(a, cb) {
      console.log("test"+a+"test");
    if (a ==undefined){
        cb(null,"para not found");
        // null has to be passed because err can onluy be passed when there is a error
        // otherwise for user created errors null has to be passed
    }
    else{
        //cb(null, 'Greetings... ' + a);
        Order.app.models.Employee.find({"where" : {"name" : a}},function(err,re){
            if(err){
                console.log(err);
                return cb(err);
            }
            else{
                cb(null,re);
                }
            });
        }
     }

  Order.remoteMethod('operation', {
        accepts: {arg: 'a', type: 'string'},
        returns: {arg: 'b', type: 'string'}
  });
  
};
