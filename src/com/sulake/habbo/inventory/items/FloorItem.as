package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_1976:String;
      
      protected var var_1417:Number;
      
      protected var var_2723:Boolean;
      
      protected var var_2724:Boolean;
      
      protected var var_2324:Boolean;
      
      protected var var_2725:Boolean;
      
      protected var var_2722:int;
      
      protected var var_2326:int;
      
      protected var var_2328:int;
      
      protected var var_2327:int;
      
      protected var var_1735:String;
      
      protected var var_2146:int;
      
      protected var var_816:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2324 = param5;
         this.var_2724 = param6;
         this.var_2723 = param7;
         this.var_2725 = param8;
         this.var_1976 = param9;
         this.var_1417 = param10;
         this.var_2722 = param11;
         this.var_2326 = param12;
         this.var_2328 = param13;
         this.var_2327 = param14;
         this.var_1735 = param15;
         this.var_2146 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_1976;
      }
      
      public function get extra() : Number
      {
         return this.var_1417;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2723;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2724;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2324;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2725;
      }
      
      public function get expires() : int
      {
         return this.var_2722;
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
      
      public function get slotId() : String
      {
         return this.var_1735;
      }
      
      public function get songId() : int
      {
         return this.var_2146;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_816 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_816;
      }
   }
}
