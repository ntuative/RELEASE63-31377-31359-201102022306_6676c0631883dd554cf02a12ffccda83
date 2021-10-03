package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1358:Boolean;
      
      private var var_2550:int;
      
      private var var_1804:int;
      
      private var var_1805:int;
      
      private var var_2547:int;
      
      private var var_2548:int;
      
      private var var_2549:int;
      
      private var var_2051:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1358;
      }
      
      public function get commission() : int
      {
         return this.var_2550;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1804;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1805;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2548;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2547;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2549;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2051;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1358 = param1.readBoolean();
         this.var_2550 = param1.readInteger();
         this.var_1804 = param1.readInteger();
         this.var_1805 = param1.readInteger();
         this.var_2548 = param1.readInteger();
         this.var_2547 = param1.readInteger();
         this.var_2549 = param1.readInteger();
         this.var_2051 = param1.readInteger();
         return true;
      }
   }
}
