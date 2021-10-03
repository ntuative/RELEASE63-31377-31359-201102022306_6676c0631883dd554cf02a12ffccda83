package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_740:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_597:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_740);
         this.var_597 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_597;
      }
   }
}
