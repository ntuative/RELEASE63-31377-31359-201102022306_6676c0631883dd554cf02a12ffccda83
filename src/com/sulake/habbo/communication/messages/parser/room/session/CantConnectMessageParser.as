package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1394:int = 1;
      
      public static const const_1887:int = 2;
      
      public static const const_1595:int = 3;
      
      public static const const_1494:int = 4;
       
      
      private var var_1313:int = 0;
      
      private var var_1312:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1313 = 0;
         this.var_1312 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1313 = param1.readInteger();
         if(this.var_1313 == 3)
         {
            this.var_1312 = param1.readString();
         }
         else
         {
            this.var_1312 = "";
         }
         return true;
      }
      
      public function get method_1() : int
      {
         return this.var_1313;
      }
      
      public function get parameter() : String
      {
         return this.var_1312;
      }
   }
}
