package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_183:int = 0;
       
      
      private var var_2347:int = 0;
      
      private var var_1332:Dictionary;
      
      private var var_1668:int = 0;
      
      private var var_1667:int = 0;
      
      private var var_2264:Boolean = false;
      
      private var var_2346:int = 0;
      
      private var var_2345:int = 0;
      
      public function Purse()
      {
         this.var_1332 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2347;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2347 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1668;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1668 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1667;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1667 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1668 > 0 || this.var_1667 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2264;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2264 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2346;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2346 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2345;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2345 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1332;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1332 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1332[param1];
      }
   }
}
