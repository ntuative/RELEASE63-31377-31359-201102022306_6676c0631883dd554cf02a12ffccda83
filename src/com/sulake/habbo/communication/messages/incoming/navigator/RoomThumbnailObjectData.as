package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1381:int;
      
      private var var_1382:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1381 = this.var_1381;
         _loc1_.var_1382 = this.var_1382;
         return _loc1_;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1381 = param1;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1382 = param1;
      }
      
      public function get pos() : int
      {
         return this.var_1381;
      }
      
      public function get imgId() : int
      {
         return this.var_1382;
      }
   }
}
