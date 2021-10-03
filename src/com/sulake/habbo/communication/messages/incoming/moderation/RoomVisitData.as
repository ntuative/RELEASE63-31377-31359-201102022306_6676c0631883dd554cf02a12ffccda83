package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1650:Boolean;
      
      private var _roomId:int;
      
      private var var_849:String;
      
      private var var_2714:int;
      
      private var var_2713:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1650 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_849 = param1.readString();
         this.var_2714 = param1.readInteger();
         this.var_2713 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1650;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_849;
      }
      
      public function get enterHour() : int
      {
         return this.var_2714;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2713;
      }
   }
}
