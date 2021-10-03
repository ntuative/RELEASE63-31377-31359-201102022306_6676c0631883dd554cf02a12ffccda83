package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_750:String = "";
      
      public static const const_537:int = 0;
      
      public static const const_473:int = 255;
      
      public static const const_842:Boolean = false;
      
      public static const const_560:int = 0;
      
      public static const const_496:int = 0;
      
      public static const const_513:int = 0;
      
      public static const const_981:int = 1;
      
      public static const const_1177:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2004:String = "";
      
      private var var_1886:int = 0;
      
      private var var_2355:int = 255;
      
      private var var_2562:Boolean = false;
      
      private var var_2563:int = 0;
      
      private var var_2561:int = 0;
      
      private var var_2564:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2004 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2004;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1886 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1886;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2355 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2355;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2562 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2562;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2563 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2563;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2561 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2561;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2564 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2564;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
