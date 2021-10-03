package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2232:int;
      
      private var var_1294:String;
      
      private var var_2325:int;
      
      private var var_2330:int;
      
      private var _category:int;
      
      private var var_1976:String;
      
      private var var_1417:int;
      
      private var var_2329:int;
      
      private var var_2326:int;
      
      private var var_2328:int;
      
      private var var_2327:int;
      
      private var var_2324:Boolean;
      
      private var var_2791:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2232 = param1;
         this.var_1294 = param2;
         this.var_2325 = param3;
         this.var_2330 = param4;
         this._category = param5;
         this.var_1976 = param6;
         this.var_1417 = param7;
         this.var_2329 = param8;
         this.var_2326 = param9;
         this.var_2328 = param10;
         this.var_2327 = param11;
         this.var_2324 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2232;
      }
      
      public function get itemType() : String
      {
         return this.var_1294;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2325;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2330;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1976;
      }
      
      public function get extra() : int
      {
         return this.var_1417;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2329;
      }
      
      public function get creationDay() : int
      {
         return this.var_2326;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2328;
      }
      
      public function get creationYear() : int
      {
         return this.var_2327;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2324;
      }
      
      public function get songID() : int
      {
         return this.var_1417;
      }
   }
}
