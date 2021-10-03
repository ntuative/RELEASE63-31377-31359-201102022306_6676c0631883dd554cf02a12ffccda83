package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class DisconnectReasonParser implements IMessageParser
   {
       
      
      private var var_1313:int;
      
      public function DisconnectReasonParser()
      {
         super();
         this.var_1313 = -1;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1313 = param1.readInteger();
         return true;
      }
      
      public function get method_1() : int
      {
         return this.var_1313;
      }
   }
}
