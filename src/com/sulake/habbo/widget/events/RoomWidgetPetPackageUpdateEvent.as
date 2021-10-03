package com.sulake.habbo.widget.events
{
   public class RoomWidgetPetPackageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_421:String = "RWOPPUE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_564:String = "RWOPPUE_OPEN_PET_PACKAGE_RESULT";
       
      
      private var _objectId:int = -1;
      
      private var var_585:String = "";
      
      private var var_1890:int = 0;
      
      public function RoomWidgetPetPackageUpdateEvent(param1:String, param2:int, param3:String, param4:int, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this._objectId = param2;
         this.var_585 = param3;
         this.var_1890 = param4;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1890;
      }
      
      public function get figure() : String
      {
         return this.var_585;
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
   }
}
