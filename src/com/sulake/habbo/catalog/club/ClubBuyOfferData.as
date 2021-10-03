package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1640:String;
      
      private var var_1639:int;
      
      private var var_2298:Boolean;
      
      private var var_2300:Boolean;
      
      private var var_2304:int;
      
      private var var_2303:int;
      
      private var var_389:ICatalogPage;
      
      private var var_2299:int;
      
      private var var_2305:int;
      
      private var var_2302:int;
      
      private var var_2301:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1640 = param2;
         this.var_1639 = param3;
         this.var_2298 = param4;
         this.var_2300 = param5;
         this.var_2304 = param6;
         this.var_2303 = param7;
         this.var_2299 = param8;
         this.var_2305 = param9;
         this.var_2302 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1640;
      }
      
      public function get price() : int
      {
         return this.var_1639;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2298;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2300;
      }
      
      public function get periods() : int
      {
         return this.var_2304;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2303;
      }
      
      public function get year() : int
      {
         return this.var_2299;
      }
      
      public function get month() : int
      {
         return this.var_2305;
      }
      
      public function get day() : int
      {
         return this.var_2302;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_183;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1639;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_389;
      }
      
      public function get priceType() : String
      {
         return Offer.const_853;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1640;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_389 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2301;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2301 = param1;
      }
   }
}
