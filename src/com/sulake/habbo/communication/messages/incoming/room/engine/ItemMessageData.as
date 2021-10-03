package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2624:Boolean = false;
      
      private var var_2625:int = 0;
      
      private var var_2623:int = 0;
      
      private var var_2621:int = 0;
      
      private var var_2620:int = 0;
      
      private var var_175:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_229:String = "";
      
      private var _type:int = 0;
      
      private var var_2786:String = "";
      
      private var var_1417:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_164:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2624 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_164 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2624;
      }
      
      public function get wallX() : Number
      {
         return this.var_2625;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_164)
         {
            this.var_2625 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2623;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_164)
         {
            this.var_2623 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2621;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_164)
         {
            this.var_2621 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2620;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_164)
         {
            this.var_2620 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_175;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_164)
         {
            this.var_175 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_174;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_164)
         {
            this.var_174 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_229;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_164)
         {
            this.var_229 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_164)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_164)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_164)
         {
            this._data = param1;
         }
      }
   }
}
