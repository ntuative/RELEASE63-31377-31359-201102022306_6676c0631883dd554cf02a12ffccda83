package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2192:String;
      
      private var var_2220:Array;
      
      private var var_2221:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2192 = param1;
         this.var_2220 = param2;
         this.var_2221 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2192;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2220;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2221;
      }
   }
}
