/**
 * Event.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    c_id:{
      type:'string'
    },
     e_id:{
        type:'string'
      },
      summary:{
        type:'string'
      },
      description:{
        type:'string'
      },
      start:{
        type:'string'
      },
      end:{
        type:'string'
      },
      status:{
        type:'string'
      },
      location:{
        type:'string'
      }
  }
};

