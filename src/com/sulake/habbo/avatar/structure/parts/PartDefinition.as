package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2379:String;
      
      private var var_1697:String;
      
      private var var_2380:String;
      
      private var var_1696:Boolean;
      
      private var var_1698:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2379 = String(param1["set-type"]);
         this.var_1697 = String(param1["flipped-set-type"]);
         this.var_2380 = String(param1["remove-set-type"]);
         this.var_1696 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1698 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1698;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1698 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2379;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1697;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2380;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1696;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1696 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1697 = param1;
      }
   }
}
