package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1802:Boolean;
      
      private var var_2542:int;
      
      private var var_391:Boolean;
      
      private var var_1148:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1802;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2542;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1148;
      }
      
      public function get owner() : Boolean
      {
         return this.var_391;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1148 != null)
         {
            this.var_1148.dispose();
            this.var_1148 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1802 = param1.readBoolean();
         if(this.var_1802)
         {
            this.var_2542 = param1.readInteger();
            this.var_391 = param1.readBoolean();
         }
         else
         {
            this.var_1148 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
