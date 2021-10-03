package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2146:int;
      
      private var var_2260:int;
      
      private var var_2259:String;
      
      private var var_2261:String;
      
      private var var_2258:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2146 = param1;
         this.var_2260 = param2;
         this.var_2259 = param3;
         this.var_2261 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2146;
      }
      
      public function get length() : int
      {
         return this.var_2260;
      }
      
      public function get name() : String
      {
         return this.var_2259;
      }
      
      public function get creator() : String
      {
         return this.var_2261;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2258;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2258 = param1;
      }
   }
}
