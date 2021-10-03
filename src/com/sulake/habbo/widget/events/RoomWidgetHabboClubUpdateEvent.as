package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_256:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2680:int = 0;
      
      private var var_2682:int = 0;
      
      private var var_2679:int = 0;
      
      private var var_2681:Boolean = false;
      
      private var var_2038:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_256,param6,param7);
         this.var_2680 = param1;
         this.var_2682 = param2;
         this.var_2679 = param3;
         this.var_2681 = param4;
         this.var_2038 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2680;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2682;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2679;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2681;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2038;
      }
   }
}
