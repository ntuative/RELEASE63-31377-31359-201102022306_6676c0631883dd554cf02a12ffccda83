package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_585:String;
      
      private var var_2497:String;
      
      private var var_886:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_585 = param1;
         this.var_886 = param2;
         this.var_2497 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_585;
      }
      
      public function get race() : String
      {
         return this.var_2497;
      }
      
      public function get gender() : String
      {
         return this.var_886;
      }
   }
}
