package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1097:Boolean;
      
      private var var_1098:Boolean;
      
      private var var_1347:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1097;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1098;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1347;
      }
      
      public function flush() : Boolean
      {
         this.var_1097 = false;
         this.var_1098 = false;
         this.var_1347 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1097 = param1.readBoolean();
         this.var_1098 = param1.readBoolean();
         this.var_1347 = param1.readBoolean();
         return true;
      }
   }
}
