package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_348:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1062:String = "RWOCM_CLUB_MAIN";
      
      public static const const_975:String = "RWOCM_PIXELS";
      
      public static const const_1104:String = "RWOCM_CREDITS";
       
      
      private var var_2707:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_348);
         this.var_2707 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2707;
      }
   }
}
