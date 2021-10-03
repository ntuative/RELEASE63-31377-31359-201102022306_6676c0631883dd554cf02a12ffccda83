package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_323:int;
      
      private var var_776:Boolean;
      
      private var var_849:String;
      
      private var _ownerName:String;
      
      private var var_1994:int;
      
      private var var_2158:int;
      
      private var var_2162:int;
      
      private var var_1718:String;
      
      private var var_2159:int;
      
      private var var_2161:Boolean;
      
      private var var_772:int;
      
      private var var_1418:int;
      
      private var var_2160:String;
      
      private var var_796:Array;
      
      private var var_2163:RoomThumbnailData;
      
      private var var_1992:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_796 = new Array();
         super();
         this.var_323 = param1.readInteger();
         this.var_776 = param1.readBoolean();
         this.var_849 = param1.readString();
         this._ownerName = param1.readString();
         this.var_1994 = param1.readInteger();
         this.var_2158 = param1.readInteger();
         this.var_2162 = param1.readInteger();
         this.var_1718 = param1.readString();
         this.var_2159 = param1.readInteger();
         this.var_2161 = param1.readBoolean();
         this.var_772 = param1.readInteger();
         this.var_1418 = param1.readInteger();
         this.var_2160 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_796.push(_loc4_);
            _loc3_++;
         }
         this.var_2163 = new RoomThumbnailData(param1);
         this.var_1992 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_323;
      }
      
      public function get event() : Boolean
      {
         return this.var_776;
      }
      
      public function get roomName() : String
      {
         return this.var_849;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_1994;
      }
      
      public function get userCount() : int
      {
         return this.var_2158;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2162;
      }
      
      public function get description() : String
      {
         return this.var_1718;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2159;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2161;
      }
      
      public function get score() : int
      {
         return this.var_772;
      }
      
      public function get categoryId() : int
      {
         return this.var_1418;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2160;
      }
      
      public function get tags() : Array
      {
         return this.var_796;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2163;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_1992;
      }
   }
}
