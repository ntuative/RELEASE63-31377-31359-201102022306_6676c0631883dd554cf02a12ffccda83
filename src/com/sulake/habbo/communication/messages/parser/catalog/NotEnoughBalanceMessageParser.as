package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1755:int = 0;
      
      private var var_1754:int = 0;
      
      private var var_1536:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1755;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1754;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1536;
      }
      
      public function flush() : Boolean
      {
         this.var_1755 = 0;
         this.var_1754 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1755 = param1.readInteger();
         this.var_1754 = param1.readInteger();
         this.var_1536 = param1.readInteger();
         return true;
      }
   }
}
