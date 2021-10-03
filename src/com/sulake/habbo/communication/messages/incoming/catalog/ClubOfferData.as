package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1640:String;
      
      private var var_1639:int;
      
      private var var_2298:Boolean;
      
      private var var_2300:Boolean;
      
      private var var_2304:int;
      
      private var var_2303:int;
      
      private var var_2299:int;
      
      private var var_2305:int;
      
      private var var_2302:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1640 = param1.readString();
         this.var_1639 = param1.readInteger();
         this.var_2298 = param1.readBoolean();
         this.var_2300 = param1.readBoolean();
         this.var_2304 = param1.readInteger();
         this.var_2303 = param1.readInteger();
         this.var_2299 = param1.readInteger();
         this.var_2305 = param1.readInteger();
         this.var_2302 = param1.readInteger();
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
   }
}
