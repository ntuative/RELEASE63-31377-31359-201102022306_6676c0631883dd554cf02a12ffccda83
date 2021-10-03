package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2275:int;
      
      private var var_2274:int;
      
      private var var_2277:String;
      
      private var var_2273:int;
      
      private var var_2276:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2275 = param1;
         this.var_2274 = param2;
         this.var_2277 = param3;
         this.var_2273 = param4;
         this.var_2276 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2275,this.var_2274,this.var_2277,this.var_2273,int(this.var_2276)];
      }
      
      public function dispose() : void
      {
      }
   }
}
