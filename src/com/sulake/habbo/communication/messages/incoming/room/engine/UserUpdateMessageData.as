package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_2077:Number = 0;
      
      private var var_2073:Number = 0;
      
      private var var_2075:Number = 0;
      
      private var var_2076:Number = 0;
      
      private var var_229:int = 0;
      
      private var var_2074:int = 0;
      
      private var var_307:Array;
      
      private var var_2078:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_307 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_175 = param3;
         this.var_174 = param4;
         this.var_2077 = param5;
         this.var_229 = param6;
         this.var_2074 = param7;
         this.var_2073 = param8;
         this.var_2075 = param9;
         this.var_2076 = param10;
         this.var_2078 = param11;
         this.var_307 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_175;
      }
      
      public function get z() : Number
      {
         return this.var_174;
      }
      
      public function get localZ() : Number
      {
         return this.var_2077;
      }
      
      public function get targetX() : Number
      {
         return this.var_2073;
      }
      
      public function get targetY() : Number
      {
         return this.var_2075;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2076;
      }
      
      public function get dir() : int
      {
         return this.var_229;
      }
      
      public function get dirHead() : int
      {
         return this.var_2074;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2078;
      }
      
      public function get actions() : Array
      {
         return this.var_307.slice();
      }
   }
}
