package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1893:int;
      
      private var var_2457:String;
      
      private var var_374:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1893 = param1.readInteger();
         this.var_2457 = param1.readString();
         this.var_374 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1893;
      }
      
      public function get nodeName() : String
      {
         return this.var_2457;
      }
      
      public function get visible() : Boolean
      {
         return this.var_374;
      }
   }
}
