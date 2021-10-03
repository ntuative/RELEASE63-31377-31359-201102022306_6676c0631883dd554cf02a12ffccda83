package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_864:String = "";
      
      private var var_585:String = "";
      
      private var var_2018:String = "";
      
      private var var_2014:int;
      
      private var var_2015:int = 0;
      
      private var var_2013:String = "";
      
      private var var_2017:int = 0;
      
      private var var_2011:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2014;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2014 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_864;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_864 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_585;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_585 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2018;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2018 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2015;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2015 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2013;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2013 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2017;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2017 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2011;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2011 = param1;
      }
   }
}
