package com.sulake.habbo.communication.messages.parser.moderation
{
   public class IssueMessageData
   {
      
      public static const const_160:int = 1;
      
      public static const const_370:int = 2;
      
      public static const const_1618:int = 3;
       
      
      private var var_2286:int;
      
      private var _state:int;
      
      private var var_1418:int;
      
      private var _reportedCategoryId:int;
      
      private var var_1766:int;
      
      private var var_2580:int;
      
      private var var_2582:int = 0;
      
      private var var_2579:int;
      
      private var var_2578:String;
      
      private var var_1357:int;
      
      private var var_1724:String;
      
      private var var_2468:int;
      
      private var var_2581:String;
      
      private var _message:String;
      
      private var var_2056:int;
      
      private var var_849:String;
      
      private var var_1702:int;
      
      private var var_2583:String;
      
      private var var_323:int;
      
      private var var_2584:String;
      
      private var var_2348:String;
      
      private var var_2508:int;
      
      private var var_2406:int;
      
      public function IssueMessageData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:int, param12:String, param13:String, param14:int, param15:String, param16:int, param17:String, param18:int, param19:String, param20:String, param21:int, param22:int)
      {
         super();
         this.var_2286 = param1;
         this._state = param2;
         this.var_1418 = param3;
         this._reportedCategoryId = param4;
         this.var_1766 = param5;
         this.var_2580 = param6;
         this.var_2579 = param7;
         this.var_2578 = param8;
         this.var_1357 = param9;
         this.var_1724 = param10;
         this.var_2468 = param11;
         this.var_2581 = param12;
         this._message = param13;
         this.var_2056 = param14;
         this.var_849 = param15;
         this.var_1702 = param16;
         this.var_2583 = param17;
         this.var_323 = param18;
         this.var_2584 = param19;
         this.var_2348 = param20;
         this.var_2508 = param21;
         this.var_2406 = param22;
      }
      
      public function get issueId() : int
      {
         return this.var_2286;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1418;
      }
      
      public function get reportedCategoryId() : int
      {
         return this._reportedCategoryId;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1766;
      }
      
      public function get priority() : int
      {
         return this.var_2580 + this.var_2582;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2579;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2578;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1357;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1724;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2468;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2581;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2056;
      }
      
      public function get roomName() : String
      {
         return this.var_849;
      }
      
      public function get roomType() : int
      {
         return this.var_1702;
      }
      
      public function get flatType() : String
      {
         return this.var_2583;
      }
      
      public function get flatId() : int
      {
         return this.var_323;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2584;
      }
      
      public function get roomResources() : String
      {
         return this.var_2348;
      }
      
      public function get unitPort() : int
      {
         return this.var_2508;
      }
      
      public function get worldId() : int
      {
         return this.var_2406;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2582 = param1;
      }
      
      public function getOpenTime(param1:int) : String
      {
         var _loc2_:int = (param1 - this.var_1766) / 1000;
         var _loc3_:int = _loc2_ % 60;
         var _loc4_:int = _loc2_ / 60;
         var _loc5_:int = _loc4_ % 60;
         var _loc6_:int = _loc4_ / 60;
         var _loc7_:String = _loc3_ < 10 ? "0" + _loc3_ : "" + _loc3_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         var _loc9_:String = _loc6_ < 10 ? "0" + _loc6_ : "" + _loc6_;
         return _loc9_ + ":" + _loc8_ + ":" + _loc7_;
      }
   }
}
