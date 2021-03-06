package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2438:int;
      
      private var var_1976:String;
      
      private var var_1639:int;
      
      private var var_372:int;
      
      private var var_2439:int = -1;
      
      private var var_2393:int;
      
      private var var_1839:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2438 = param3;
         this.var_1976 = param4;
         this.var_1639 = param5;
         this.var_372 = param6;
         this.var_2439 = param7;
         this.var_2393 = param8;
         this.var_1839 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2438;
      }
      
      public function get stuffData() : String
      {
         return this.var_1976;
      }
      
      public function get price() : int
      {
         return this.var_1639;
      }
      
      public function get status() : int
      {
         return this.var_372;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2439;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2393;
      }
      
      public function get offerCount() : int
      {
         return this.var_1839;
      }
   }
}
