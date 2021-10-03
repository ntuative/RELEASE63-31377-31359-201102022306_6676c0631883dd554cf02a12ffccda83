package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1666:int;
      
      private var var_1453:int;
      
      private var var_2070:int;
      
      private var var_2067:int;
      
      private var var_2069:int;
      
      private var _energy:int;
      
      private var var_2065:int;
      
      private var _nutrition:int;
      
      private var var_2063:int;
      
      private var var_2068:int;
      
      private var _ownerName:String;
      
      private var var_2010:int;
      
      private var var_461:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1666;
      }
      
      public function get level() : int
      {
         return this.var_1453;
      }
      
      public function get levelMax() : int
      {
         return this.var_2070;
      }
      
      public function get experience() : int
      {
         return this.var_2067;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2069;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2065;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2063;
      }
      
      public function get ownerId() : int
      {
         return this.var_2068;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2010;
      }
      
      public function get age() : int
      {
         return this.var_461;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1666 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1453 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2070 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2067 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2069 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2065 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2063 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2068 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2010 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_461 = param1;
      }
   }
}
