package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_229:int = 0;
      
      private var var_483:int = 0;
      
      private var var_583:int = 0;
      
      private var _type:int = 0;
      
      private var var_2786:String = "";
      
      private var var_1417:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2035:int = 0;
      
      private var var_2034:String = null;
      
      private var var_164:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_164 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_164)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_229;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_229 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_483;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_483 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_583;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_583 = param1;
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
      
      public function get staticClass() : String
      {
         return this.var_2034;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_164)
         {
            this.var_2034 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1417;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_1417 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2035;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_2035 = param1;
         }
      }
   }
}
