package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_889:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1159:String = "inventory_effects";
      
      public static const const_1119:String = "inventory_badges";
      
      public static const const_1632:String = "inventory_clothes";
      
      public static const const_1430:String = "inventory_furniture";
       
      
      private var var_2290:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_889);
         this.var_2290 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2290;
      }
   }
}
