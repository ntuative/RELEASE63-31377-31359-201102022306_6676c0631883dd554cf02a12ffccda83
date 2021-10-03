package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_305:int;
      
      private var var_2285:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_305 = param1;
         this.var_2285 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_305;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2285;
      }
   }
}
