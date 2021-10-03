package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1453:int;
      
      private var var_305:String;
      
      private var var_2026:int;
      
      private var var_2027:int;
      
      private var var_1900:int;
      
      private var var_2025:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1453 = param1.readInteger();
         this.var_305 = param1.readString();
         this.var_2026 = param1.readInteger();
         this.var_2027 = param1.readInteger();
         this.var_1900 = param1.readInteger();
         this.var_2025 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_305;
      }
      
      public function get level() : int
      {
         return this.var_1453;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2026;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2027;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1900;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2025;
      }
   }
}
