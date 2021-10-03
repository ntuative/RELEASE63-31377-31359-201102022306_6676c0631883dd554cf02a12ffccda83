package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStoreSettingsMessage extends RoomWidgetMessage
   {
      
      public static const const_1376:String = "RWSSM_STORE_SETTINGS";
      
      public static const const_856:String = "RWSSM_STORE_SOUND";
      
      public static const const_867:String = "RWSSM_PREVIEW_SOUND";
       
      
      private var var_456:Number;
      
      public function RoomWidgetStoreSettingsMessage(param1:String)
      {
         super(param1);
      }
      
      public function get volume() : Number
      {
         return this.var_456;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_456 = param1;
      }
   }
}
