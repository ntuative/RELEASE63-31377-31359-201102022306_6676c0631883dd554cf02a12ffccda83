package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2438:int;
      
      private var var_1976:String;
      
      private var var_1639:int;
      
      private var var_2393:int;
      
      private var var_2611:int;
      
      private var var_372:int;
      
      private var var_2439:int = -1;
      
      private var var_1839:int;
      
      private var var_43:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2438 = param3;
         this.var_1976 = param4;
         this.var_1639 = param5;
         this.var_372 = param6;
         this.var_2393 = param7;
         this.var_1839 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_43)
         {
            this.var_43.dispose();
            this.var_43 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2393;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_43 != null)
         {
            this.var_43.dispose();
         }
         this.var_43 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2611 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2611;
      }
      
      public function get status() : int
      {
         return this.var_372;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2439;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2439 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1639 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1839;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1839 = param1;
      }
   }
}
