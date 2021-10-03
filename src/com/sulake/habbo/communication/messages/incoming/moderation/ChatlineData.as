package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2523:int;
      
      private var var_2521:int;
      
      private var var_2522:int;
      
      private var var_2520:String;
      
      private var var_1744:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2523 = param1.readInteger();
         this.var_2521 = param1.readInteger();
         this.var_2522 = param1.readInteger();
         this.var_2520 = param1.readString();
         this.var_1744 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2523;
      }
      
      public function get minute() : int
      {
         return this.var_2521;
      }
      
      public function get chatterId() : int
      {
         return this.var_2522;
      }
      
      public function get chatterName() : String
      {
         return this.var_2520;
      }
      
      public function get msg() : String
      {
         return this.var_1744;
      }
   }
}
