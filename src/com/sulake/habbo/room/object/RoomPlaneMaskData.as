package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2086:Number = 0.0;
      
      private var var_2087:Number = 0.0;
      
      private var var_2089:Number = 0.0;
      
      private var var_2088:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2086 = param1;
         this.var_2087 = param2;
         this.var_2089 = param3;
         this.var_2088 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2086;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2087;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2089;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2088;
      }
   }
}
