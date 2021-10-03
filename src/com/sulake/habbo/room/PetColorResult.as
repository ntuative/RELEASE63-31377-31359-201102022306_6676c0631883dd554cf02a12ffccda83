package com.sulake.habbo.room
{
   public class PetColorResult
   {
       
      
      private var var_2212:int = 0;
      
      private var var_2213:int = 0;
      
      public function PetColorResult(param1:int, param2:int)
      {
         super();
         this.var_2212 = param1 | 4278190080;
         this.var_2213 = param2 | 4278190080;
      }
      
      public function get primaryColor() : int
      {
         return this.var_2212;
      }
      
      public function get secondaryColor() : int
      {
         return this.var_2213;
      }
   }
}
