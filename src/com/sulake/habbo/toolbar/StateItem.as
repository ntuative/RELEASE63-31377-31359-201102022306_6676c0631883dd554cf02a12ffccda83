package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var _id:String;
      
      private var var_1370:Boolean;
      
      private var var_2357:Boolean;
      
      private var var_196:int = 120;
      
      private var var_1679:String;
      
      private var var_1342:String = "-1";
      
      private var var_1564:String = "-1";
      
      private var var_1680:String = "-1";
      
      private var var_2358:String;
      
      private var var_437:String;
      
      private var _frames:XMLList;
      
      private var var_334:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         this._id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            this.var_1370 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            this.var_2357 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            this.var_196 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            this.var_1679 = param1.@namebase;
         }
         else
         {
            this.var_1679 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            this.var_1342 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            this.var_1564 = param1.@nextState;
         }
         else
         {
            this.var_1564 = this._id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            this.var_1680 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            this.var_2358 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            this.var_437 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            this._frames = _loc3_;
         }
         if(param1.attribute("label").length() > 0)
         {
            this.var_334 = param1.@label;
         }
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get loop() : Boolean
      {
         return this.var_1370;
      }
      
      public function get bounce() : Boolean
      {
         return this.var_2357;
      }
      
      public function get timer() : int
      {
         return this.var_196;
      }
      
      public function get nameBase() : String
      {
         return this.var_1679;
      }
      
      public function get hasStateOver() : Boolean
      {
         return this.var_1342 != "-1";
      }
      
      public function get stateOver() : String
      {
         return this.var_1342;
      }
      
      public function get nextState() : String
      {
         return this.var_1564;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return this.var_1680 != "-1";
      }
      
      public function get defaultState() : String
      {
         return this.var_1680;
      }
      
      public function get tooltip() : String
      {
         return this.var_2358;
      }
      
      public function get frames() : XMLList
      {
         return this._frames;
      }
      
      public function get background() : String
      {
         return this.var_437;
      }
      
      public function get label() : String
      {
         return this.var_334;
      }
   }
}
