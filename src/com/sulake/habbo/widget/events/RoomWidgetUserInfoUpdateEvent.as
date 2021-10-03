package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_176:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_254:String = "RWUIUE_PEER";
      
      public static const const_1530:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_1153:int = 2;
      
      public static const const_1207:int = 3;
      
      public static const const_1604:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1808:String = "";
      
      private var var_2014:int;
      
      private var var_2015:int = 0;
      
      private var var_2011:int = 0;
      
      private var var_585:String = "";
      
      private var var_43:BitmapData = null;
      
      private var var_259:Array;
      
      private var var_1765:Array;
      
      private var var_1398:int = 0;
      
      private var var_2478:String = "";
      
      private var var_2483:int = 0;
      
      private var var_2488:int = 0;
      
      private var var_1671:Boolean = false;
      
      private var var_1503:String = "";
      
      private var var_2486:Boolean = false;
      
      private var var_2477:Boolean = true;
      
      private var var_1044:int = 0;
      
      private var var_2482:Boolean = false;
      
      private var var_2479:Boolean = false;
      
      private var var_2481:Boolean = false;
      
      private var var_2487:Boolean = false;
      
      private var var_2484:Boolean = false;
      
      private var var_2480:Boolean = false;
      
      private var var_2485:int = 0;
      
      private var var_1672:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_259 = [];
         this.var_1765 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1808 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1808;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2014 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2014;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2015 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2015;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2011 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2011;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_585 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_585;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_43 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_259 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_259;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1765;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1765 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1398 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1398;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2478 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2478;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2486 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2486;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1044 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1044;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2482 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2482;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2479 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2479;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2481 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2481;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2487 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2487;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2484 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2484;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2480 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2480;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2485 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2485;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2477 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2477;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1672 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1672;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2483 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2483;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2488 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2488;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1671 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1671;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1503 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1503;
      }
   }
}
