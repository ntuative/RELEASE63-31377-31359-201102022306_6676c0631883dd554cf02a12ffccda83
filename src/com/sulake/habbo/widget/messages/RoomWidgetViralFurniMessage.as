package com.sulake.habbo.widget.messages
{
   public class RoomWidgetViralFurniMessage extends RoomWidgetMessage
   {
      
      public static const const_712:String = "RWVFM_VIRAL_FOUND";
      
      public static const const_149:String = "RWVFM_OPEN_PRESENT";
       
      
      private var _objectId:int;
      
      public function RoomWidgetViralFurniMessage(param1:String)
      {
         super(param1);
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function set objectId(param1:int) : void
      {
         this._objectId = param1;
      }
   }
}
