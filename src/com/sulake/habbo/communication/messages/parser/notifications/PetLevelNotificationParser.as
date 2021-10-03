package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1666:int;
      
      private var var_2570:String;
      
      private var var_1453:int;
      
      private var var_585:String;
      
      private var var_1447:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1666 = param1.readInteger();
         this.var_2570 = param1.readString();
         this.var_1453 = param1.readInteger();
         this.var_585 = param1.readString();
         this.var_1447 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1666;
      }
      
      public function get petName() : String
      {
         return this.var_2570;
      }
      
      public function get level() : int
      {
         return this.var_1453;
      }
      
      public function get figure() : String
      {
         return this.var_585;
      }
      
      public function get petType() : int
      {
         return this.var_1447;
      }
   }
}
