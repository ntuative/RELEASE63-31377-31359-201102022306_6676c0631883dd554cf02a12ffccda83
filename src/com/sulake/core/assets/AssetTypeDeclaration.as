package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2504:String;
      
      private var var_2506:Class;
      
      private var var_2505:Class;
      
      private var var_1785:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2504 = param1;
         this.var_2506 = param2;
         this.var_2505 = param3;
         if(rest == null)
         {
            this.var_1785 = new Array();
         }
         else
         {
            this.var_1785 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2504;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2506;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2505;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1785;
      }
   }
}
