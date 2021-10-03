package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_766:TileHeightMap = null;
      
      private var var_1178:LegacyWallGeometry = null;
      
      private var var_1177:RoomCamera = null;
      
      private var var_765:SelectedRoomObjectData = null;
      
      private var var_767:SelectedRoomObjectData = null;
      
      private var var_2659:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1178 = new LegacyWallGeometry();
         this.var_1177 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_766;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_766 != null)
         {
            this.var_766.dispose();
         }
         this.var_766 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1178;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1177;
      }
      
      public function get worldType() : String
      {
         return this.var_2659;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2659 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_765;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_765 != null)
         {
            this.var_765.dispose();
         }
         this.var_765 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_767;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_767 != null)
         {
            this.var_767.dispose();
         }
         this.var_767 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_766 != null)
         {
            this.var_766.dispose();
            this.var_766 = null;
         }
         if(this.var_1178 != null)
         {
            this.var_1178.dispose();
            this.var_1178 = null;
         }
         if(this.var_1177 != null)
         {
            this.var_1177.dispose();
            this.var_1177 = null;
         }
         if(this.var_765 != null)
         {
            this.var_765.dispose();
            this.var_765 = null;
         }
         if(this.var_767 != null)
         {
            this.var_767.dispose();
            this.var_767 = null;
         }
      }
   }
}
