package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2393:int;
      
      private var var_2395:int;
      
      private var var_2394:int;
      
      private var _dayOffsets:Array;
      
      private var var_1751:Array;
      
      private var var_1750:Array;
      
      private var var_2397:int;
      
      private var var_2396:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2393;
      }
      
      public function get offerCount() : int
      {
         return this.var_2395;
      }
      
      public function get historyLength() : int
      {
         return this.var_2394;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1751;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1750;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2397;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2396;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2393 = param1.readInteger();
         this.var_2395 = param1.readInteger();
         this.var_2394 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1751 = [];
         this.var_1750 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1751.push(param1.readInteger());
            this.var_1750.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2396 = param1.readInteger();
         this.var_2397 = param1.readInteger();
         return true;
      }
   }
}
