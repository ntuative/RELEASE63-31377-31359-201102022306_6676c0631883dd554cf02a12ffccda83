package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1408:String = "pricing_model_unknown";
      
      public static const const_438:String = "pricing_model_single";
      
      public static const const_455:String = "pricing_model_multi";
      
      public static const const_460:String = "pricing_model_bundle";
      
      public static const const_1566:String = "price_type_none";
      
      public static const const_853:String = "price_type_credits";
      
      public static const const_1003:String = "price_type_activitypoints";
      
      public static const const_978:String = "price_type_credits_and_activitypoints";
       
      
      private var var_660:String;
      
      private var var_1012:String;
      
      private var _offerId:int;
      
      private var var_1535:String;
      
      private var var_1011:int;
      
      private var var_1013:int;
      
      private var var_1536:int;
      
      private var var_389:ICatalogPage;
      
      private var var_661:IProductContainer;
      
      private var var_2111:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1535 = param1.localizationId;
         this.var_1011 = param1.priceInCredits;
         this.var_1013 = param1.priceInActivityPoints;
         this.var_1536 = param1.activityPointType;
         this.var_389 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_389;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1535;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1011;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1013;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1536;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_661;
      }
      
      public function get pricingModel() : String
      {
         return this.var_660;
      }
      
      public function get priceType() : String
      {
         return this.var_1012;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2111;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2111 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1535 = "";
         this.var_1011 = 0;
         this.var_1013 = 0;
         this.var_1536 = 0;
         this.var_389 = null;
         if(this.var_661 != null)
         {
            this.var_661.dispose();
            this.var_661 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_660)
         {
            case const_438:
               this.var_661 = new SingleProductContainer(this,param1);
               break;
            case const_455:
               this.var_661 = new MultiProductContainer(this,param1);
               break;
            case const_460:
               this.var_661 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_660);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_660 = const_438;
            }
            else
            {
               this.var_660 = const_455;
            }
         }
         else if(param1.length > 1)
         {
            this.var_660 = const_460;
         }
         else
         {
            this.var_660 = const_1408;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1011 > 0 && this.var_1013 > 0)
         {
            this.var_1012 = const_978;
         }
         else if(this.var_1011 > 0)
         {
            this.var_1012 = const_853;
         }
         else if(this.var_1013 > 0)
         {
            this.var_1012 = const_1003;
         }
         else
         {
            this.var_1012 = const_1566;
         }
      }
   }
}
