package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2567:int;
      
      private var var_2645:int;
      
      private var var_1011:int;
      
      private var var_1013:int;
      
      private var var_1536:int;
      
      private var var_2646:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2567 = param1.readInteger();
         this.var_2645 = param1.readInteger();
         this.var_1011 = param1.readInteger();
         this.var_1013 = param1.readInteger();
         this.var_1536 = param1.readInteger();
         this.var_2646 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2567;
      }
      
      public function get charges() : int
      {
         return this.var_2645;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1011;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1013;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2646;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1536;
      }
   }
}
