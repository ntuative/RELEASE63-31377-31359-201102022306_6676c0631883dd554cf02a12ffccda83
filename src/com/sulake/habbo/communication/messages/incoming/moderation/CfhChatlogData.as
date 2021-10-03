package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1511:int;
      
      private var var_2055:int;
      
      private var var_1357:int;
      
      private var var_2056:int;
      
      private var var_110:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1511 = param1.readInteger();
         this.var_2055 = param1.readInteger();
         this.var_1357 = param1.readInteger();
         this.var_2056 = param1.readInteger();
         this.var_110 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1511);
      }
      
      public function get callId() : int
      {
         return this.var_1511;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2055;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1357;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2056;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_110;
      }
   }
}
