package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1668:int = 0;
      
      private var var_1667:int = 0;
      
      private var var_2262:int = 0;
      
      private var var_2263:Boolean = false;
      
      private var var_2264:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1668 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1667 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2262 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2263 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2264 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1668;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1667;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2262;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2263;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2264;
      }
   }
}
