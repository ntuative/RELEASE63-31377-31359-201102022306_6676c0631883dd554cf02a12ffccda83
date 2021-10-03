package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_235:String = "ROE_MOUSE_CLICK";
      
      public static const const_1720:String = "ROE_MOUSE_ENTER";
      
      public static const const_494:String = "ROE_MOUSE_MOVE";
      
      public static const const_1781:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1850:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_481:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1853:String = "";
      
      private var var_2123:Boolean;
      
      private var var_2120:Boolean;
      
      private var var_2122:Boolean;
      
      private var var_2121:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1853 = param2;
         this.var_2123 = param5;
         this.var_2120 = param6;
         this.var_2122 = param7;
         this.var_2121 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1853;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2123;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2120;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2122;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2121;
      }
   }
}
