package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1453:int;
      
      private var var_1801:int;
      
      private var var_2027:int;
      
      private var var_1900:int;
      
      private var var_1454:int;
      
      private var var_2041:String = "";
      
      private var var_2387:String = "";
      
      private var var_2388:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1453 = param1.readInteger();
         this.var_2041 = param1.readString();
         this.var_1801 = param1.readInteger();
         this.var_2027 = param1.readInteger();
         this.var_1900 = param1.readInteger();
         this.var_1454 = param1.readInteger();
         this.var_2388 = param1.readInteger();
         this.var_2387 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1453;
      }
      
      public function get points() : int
      {
         return this.var_1801;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2027;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1900;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1454;
      }
      
      public function get badgeID() : String
      {
         return this.var_2041;
      }
      
      public function get achievementID() : int
      {
         return this.var_2388;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2387;
      }
   }
}
