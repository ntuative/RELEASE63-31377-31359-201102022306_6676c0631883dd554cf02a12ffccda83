package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_323:int;
      
      private var var_2158:int;
      
      private var var_2437:Boolean;
      
      private var var_2068:int;
      
      private var _ownerName:String;
      
      private var var_110:RoomData;
      
      private var var_776:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_323 = param1.readInteger();
         this.var_2158 = param1.readInteger();
         this.var_2437 = param1.readBoolean();
         this.var_2068 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_110 = new RoomData(param1);
         this.var_776 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_110 != null)
         {
            this.var_110.dispose();
            this.var_110 = null;
         }
         if(this.var_776 != null)
         {
            this.var_776.dispose();
            this.var_776 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_323;
      }
      
      public function get userCount() : int
      {
         return this.var_2158;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2437;
      }
      
      public function get ownerId() : int
      {
         return this.var_2068;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_110;
      }
      
      public function get event() : RoomData
      {
         return this.var_776;
      }
   }
}
