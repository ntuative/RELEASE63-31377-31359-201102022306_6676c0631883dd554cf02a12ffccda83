package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_585:String;
      
      private var var_864:String;
      
      private var var_2080:String;
      
      private var var_1503:String;
      
      private var var_2082:int;
      
      private var var_2084:String;
      
      private var var_2081:int;
      
      private var var_2083:int;
      
      private var _respectTotal:int;
      
      private var var_1044:int;
      
      private var var_679:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_585 = param1.readString();
         this.var_864 = param1.readString();
         this.var_2080 = param1.readString();
         this.var_1503 = param1.readString();
         this.var_2082 = param1.readInteger();
         this.var_2084 = param1.readString();
         this.var_2081 = param1.readInteger();
         this.var_2083 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_1044 = param1.readInteger();
         this.var_679 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_585;
      }
      
      public function get sex() : String
      {
         return this.var_864;
      }
      
      public function get customData() : String
      {
         return this.var_2080;
      }
      
      public function get realName() : String
      {
         return this.var_1503;
      }
      
      public function get tickets() : int
      {
         return this.var_2082;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2084;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2081;
      }
      
      public function get directMail() : int
      {
         return this.var_2083;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1044;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_679;
      }
   }
}
