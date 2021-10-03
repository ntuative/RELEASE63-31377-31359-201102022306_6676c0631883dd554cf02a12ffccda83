package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1358:Boolean = false;
      
      private var var_1639:int;
      
      private var var_1691:Array;
      
      private var var_738:Array;
      
      private var var_737:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1358 = _loc2_.isWrappingEnabled;
         this.var_1639 = _loc2_.wrappingPrice;
         this.var_1691 = _loc2_.stuffTypes;
         this.var_738 = _loc2_.boxTypes;
         this.var_737 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1358;
      }
      
      public function get price() : int
      {
         return this.var_1639;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1691;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_738;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_737;
      }
   }
}
