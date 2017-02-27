/**
 * CalenderController
 *
 * @description :: Server-side logic for managing calenders
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var gCal = require('google-calendar');
var _ = require('lodash');

module.exports = {
	add:function(req,res){
        var accessToken = "ya29.Glz_A07Lt1TIgDAc3aqJ6V2duOOK52G7NQjismM7vwBc5pLw1gT7cTwP5vbThWJtYLQhQq1OOoOtEHhiaZxzq3pVcAtACkJYV6TgXJD0HOKCFC4BWck4u5XMPRGifg";
        gCal(accessToken).calendarList.list(function(err, data) {
        if(err) return res.send(400,err);
        for(i=0;i<data.items.length;i++){
                
                var obj = {
                    c_id : data.items[i].id,
                    summary : data.items[i].summary,
                    timezone : data.items[i].timeZone
                };
                //console.log(obj);
                Calender.create(obj).exec(function (err, records) {
                    //console.log(err);  
                    //console.log(records);
                    var cid = records.c_id;
                    console.log(cid);
                    if(cid!==null){
                        //console.log('aaa')
                        gCal(accessToken).events.list(cid, function(err, event) {
                            
                                if(err) return res.send(500,err);
                                //console.log('a');
                                //console.log(event);
                                    for(j=0;j<event.items.length;j++){
                                    //console.log(j);
                                    /*
                                    var objEvent = {
                                        e_id : event.items[j].id,
                                        c_id:cid,
                                        summary:event.items[j].summary || '',
                                        description:event.items[j].description || '',
                                        start:event.items[j].start.dateTime || '',
                                        end:event.items[j].end.dateTime || '',
                                        status:event.items[j].status || '',
                                        location:event.items[j].location || ''
                                    };
                                    */
                                    var objEvent = {
                                        e_id : event.items[j].id,
                                        c_id:cid,
                                        summary:'sd',
                                        description:'asd',
                                        start:'',
                                        end:'',
                                        status:'dd',
                                        location:'dsda'
                                    };
                                    console.log(objEvent);
                                    Event.create(objEvent).exec(function(err,record){
                                        if(err) return res.send(500,err);
                                            console.log(record);
                                    });
                                }
                            
                        });
                    }
                            
                });
            }
            res.send(data);
        });
            
    },
    getCalenders:function(req,res){
        var accessToken = "ya29.Glz_A07Lt1TIgDAc3aqJ6V2duOOK52G7NQjismM7vwBc5pLw1gT7cTwP5vbThWJtYLQhQq1OOoOtEHhiaZxzq3pVcAtACkJYV6TgXJD0HOKCFC4BWck4u5XMPRGifg";
        gCal(accessToken).calendarList.list(function(err, data) {
        if(err) return res.send(500,err);
        res.send(data);
        });
    },
    getEvents:function(req,res){
        var accessToken = "ya29.Glz_A07Lt1TIgDAc3aqJ6V2duOOK52G7NQjismM7vwBc5pLw1gT7cTwP5vbThWJtYLQhQq1OOoOtEHhiaZxzq3pVcAtACkJYV6TgXJD0HOKCFC4BWck4u5XMPRGifg";
        var calendarId = req.query.calendarId;
       // console.log(calendarId);
        gCal(accessToken).events.list(calendarId, function(err, data) {
            if(err) return res.send(500,err);
            res.send(data);
        });
    },
}

