package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2436:int;
      
      private var var_1294:String;
      
      private var _objId:int;
      
      private var var_1734:int;
      
      private var _category:int;
      
      private var var_1976:String;
      
      private var var_2627:Boolean;
      
      private var var_2629:Boolean;
      
      private var var_2628:Boolean;
      
      private var var_2592:Boolean;
      
      private var var_2035:int;
      
      private var var_1417:int;
      
      private var var_1735:String = "";
      
      private var var_2146:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2436 = param1;
         this.var_1294 = param2;
         this._objId = param3;
         this.var_1734 = param4;
         this._category = param5;
         this.var_1976 = param6;
         this.var_2627 = param7;
         this.var_2629 = param8;
         this.var_2628 = param9;
         this.var_2592 = param10;
         this.var_2035 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1735 = param1;
         this.var_1417 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2436;
      }
      
      public function get itemType() : String
      {
         return this.var_1294;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1734;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1976;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2627;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2629;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2628;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2592;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2035;
      }
      
      public function get slotId() : String
      {
         return this.var_1735;
      }
      
      public function get songId() : int
      {
         return this.var_2146;
      }
      
      public function get extra() : int
      {
         return this.var_1417;
      }
   }
}
