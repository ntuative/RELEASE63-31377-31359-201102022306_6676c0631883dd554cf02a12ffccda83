package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1853:String = "";
      
      private var var_1694:String = "";
      
      private var var_2392:String = "";
      
      private var var_2619:Number = 0;
      
      private var var_2622:Number = 0;
      
      private var var_2621:Number = 0;
      
      private var var_2620:Number = 0;
      
      private var var_2120:Boolean = false;
      
      private var var_2123:Boolean = false;
      
      private var var_2122:Boolean = false;
      
      private var var_2121:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1853 = param2;
         this.var_1694 = param3;
         this.var_2392 = param4;
         this.var_2619 = param5;
         this.var_2622 = param6;
         this.var_2621 = param7;
         this.var_2620 = param8;
         this.var_2120 = param9;
         this.var_2123 = param10;
         this.var_2122 = param11;
         this.var_2121 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1853;
      }
      
      public function get canvasId() : String
      {
         return this.var_1694;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2392;
      }
      
      public function get screenX() : Number
      {
         return this.var_2619;
      }
      
      public function get screenY() : Number
      {
         return this.var_2622;
      }
      
      public function get localX() : Number
      {
         return this.var_2621;
      }
      
      public function get localY() : Number
      {
         return this.var_2620;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2120;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2123;
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
