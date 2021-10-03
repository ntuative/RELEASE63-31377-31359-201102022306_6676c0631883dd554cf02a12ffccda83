package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1089:Boolean;
      
      private var var_2129:int;
      
      private var var_2125:String;
      
      private var var_323:int;
      
      private var var_2128:int;
      
      private var var_2124:String;
      
      private var var_2127:String;
      
      private var var_2126:String;
      
      private var var_796:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_796 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1089 = false;
            return;
         }
         this.var_1089 = true;
         this.var_2129 = int(_loc2_);
         this.var_2125 = param1.readString();
         this.var_323 = int(param1.readString());
         this.var_2128 = param1.readInteger();
         this.var_2124 = param1.readString();
         this.var_2127 = param1.readString();
         this.var_2126 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_796.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_796 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2129;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2125;
      }
      
      public function get flatId() : int
      {
         return this.var_323;
      }
      
      public function get eventType() : int
      {
         return this.var_2128;
      }
      
      public function get eventName() : String
      {
         return this.var_2124;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2127;
      }
      
      public function get creationTime() : String
      {
         return this.var_2126;
      }
      
      public function get tags() : Array
      {
         return this.var_796;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1089;
      }
   }
}
