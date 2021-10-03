package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetPackageEvent extends RoomSessionEvent
   {
      
      public static const const_477:String = "RSOPPE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_428:String = "RSOPPE_OPEN_PET_PACKAGE_RESULT";
       
      
      private var _objectId:int = 0;
      
      private var var_585:String = "";
      
      private var var_1890:int = 0;
      
      public function RoomSessionPetPackageEvent(param1:String, param2:IRoomSession, param3:int, param4:String, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param6,param7);
         this._objectId = param3;
         this.var_585 = param4;
         this.var_1890 = param5;
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get figure() : String
      {
         return this.var_585;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1890;
      }
   }
}
