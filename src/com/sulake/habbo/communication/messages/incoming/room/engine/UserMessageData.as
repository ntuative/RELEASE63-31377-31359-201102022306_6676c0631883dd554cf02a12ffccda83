package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1160:String = "M";
      
      public static const const_1400:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_229:int = 0;
      
      private var _name:String = "";
      
      private var var_2012:int = 0;
      
      private var var_864:String = "";
      
      private var var_585:String = "";
      
      private var var_2018:String = "";
      
      private var var_2014:int;
      
      private var var_2015:int = 0;
      
      private var var_2013:String = "";
      
      private var var_2017:int = 0;
      
      private var var_2011:int = 0;
      
      private var var_2016:String = "";
      
      private var var_164:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_164 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_164)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_175;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_164)
         {
            this.var_175 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_174;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_164)
         {
            this.var_174 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_229;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_229 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_164)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2012;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_2012 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_864;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_164)
         {
            this.var_864 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_585;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_164)
         {
            this.var_585 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2018;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_164)
         {
            this.var_2018 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2014;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_2014 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2015;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_2015 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2013;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_164)
         {
            this.var_2013 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2017;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_2017 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2011;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_2011 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2016;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_164)
         {
            this.var_2016 = param1;
         }
      }
   }
}
