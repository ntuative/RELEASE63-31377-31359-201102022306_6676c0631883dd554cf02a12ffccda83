package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_552:int = 0;
      
      public static const const_181:int = 1;
      
      public static const const_119:int = 2;
      
      public static const const_809:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1718:String;
      
      private var var_1994:int;
      
      private var var_1418:int;
      
      private var var_1987:int;
      
      private var var_1993:int;
      
      private var var_796:Array;
      
      private var var_1995:Array;
      
      private var var_1991:int;
      
      private var var_1992:Boolean;
      
      private var var_1989:Boolean;
      
      private var var_1988:Boolean;
      
      private var var_1990:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_1992;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_1992 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_1989;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_1989 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_1988;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_1988 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_1990;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_1990 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1718;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1718 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_1994;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_1994 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1418;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1418 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_1987;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_1987 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_1993;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_1993 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_796;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_796 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_1995;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_1995 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_1991;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_1991 = param1;
      }
   }
}
