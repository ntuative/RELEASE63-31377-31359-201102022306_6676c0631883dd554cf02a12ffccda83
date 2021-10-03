package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AvailableQuestBadgeData
   {
       
      
      private var var_305:int;
      
      private var var_2285:String;
      
      public function AvailableQuestBadgeData(param1:IMessageDataWrapper)
      {
         super();
         this.var_305 = param1.readInteger();
         this.var_2285 = param1.readString();
      }
      
      public function get badgeId() : int
      {
         return this.var_305;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2285;
      }
   }
}
