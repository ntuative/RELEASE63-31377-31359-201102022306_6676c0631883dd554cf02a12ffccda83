package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_891:RoomObjectLocationCacheItem = null;
      
      private var var_191:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_891 = new RoomObjectLocationCacheItem(param1);
         this.var_191 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_891;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_191;
      }
      
      public function dispose() : void
      {
         if(this.var_891 != null)
         {
            this.var_891.dispose();
            this.var_891 = null;
         }
         if(this.var_191 != null)
         {
            this.var_191.dispose();
            this.var_191 = null;
         }
      }
   }
}
