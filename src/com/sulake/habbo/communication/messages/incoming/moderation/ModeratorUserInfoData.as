package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2199:int;
      
      private var var_2198:int;
      
      private var var_650:Boolean;
      
      private var var_2201:int;
      
      private var var_2202:int;
      
      private var var_2200:int;
      
      private var var_2197:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2199 = param1.readInteger();
         this.var_2198 = param1.readInteger();
         this.var_650 = param1.readBoolean();
         this.var_2201 = param1.readInteger();
         this.var_2202 = param1.readInteger();
         this.var_2200 = param1.readInteger();
         this.var_2197 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2199;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2198;
      }
      
      public function get online() : Boolean
      {
         return this.var_650;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2201;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2202;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2200;
      }
      
      public function get banCount() : int
      {
         return this.var_2197;
      }
   }
}
