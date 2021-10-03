package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_610:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_305:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_610);
         this.var_305 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_305;
      }
   }
}
