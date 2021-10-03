package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1010:int = 1;
      
      public static const const_640:int = 2;
      
      public static const const_875:int = 3;
      
      public static const const_1502:int = 4;
       
      
      private var _index:int;
      
      private var var_2280:String;
      
      private var var_2281:String;
      
      private var var_2284:Boolean;
      
      private var var_2282:String;
      
      private var var_959:String;
      
      private var var_2283:int;
      
      private var var_2158:int;
      
      private var _type:int;
      
      private var var_2004:String;
      
      private var var_854:GuestRoomData;
      
      private var var_853:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2280 = param1.readString();
         this.var_2281 = param1.readString();
         this.var_2284 = param1.readInteger() == 1;
         this.var_2282 = param1.readString();
         this.var_959 = param1.readString();
         this.var_2283 = param1.readInteger();
         this.var_2158 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1010)
         {
            this.var_2004 = param1.readString();
         }
         else if(this._type == const_875)
         {
            this.var_853 = new PublicRoomData(param1);
         }
         else if(this._type == const_640)
         {
            this.var_854 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_854 != null)
         {
            this.var_854.dispose();
            this.var_854 = null;
         }
         if(this.var_853 != null)
         {
            this.var_853.dispose();
            this.var_853 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2280;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2281;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2284;
      }
      
      public function get picText() : String
      {
         return this.var_2282;
      }
      
      public function get picRef() : String
      {
         return this.var_959;
      }
      
      public function get folderId() : int
      {
         return this.var_2283;
      }
      
      public function get tag() : String
      {
         return this.var_2004;
      }
      
      public function get userCount() : int
      {
         return this.var_2158;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_854;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_853;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1010)
         {
            return 0;
         }
         if(this.type == const_640)
         {
            return this.var_854.maxUserCount;
         }
         if(this.type == const_875)
         {
            return this.var_853.maxUsers;
         }
         return 0;
      }
   }
}
