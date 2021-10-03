package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2206:int;
      
      private var var_1502:String;
      
      private var var_2037:String;
      
      private var var_2207:Boolean;
      
      private var var_2204:Boolean;
      
      private var var_2205:int;
      
      private var var_2036:String;
      
      private var var_2203:String;
      
      private var var_1503:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2206 = param1.readInteger();
         this.var_1502 = param1.readString();
         this.var_2037 = param1.readString();
         this.var_2207 = param1.readBoolean();
         this.var_2204 = param1.readBoolean();
         param1.readString();
         this.var_2205 = param1.readInteger();
         this.var_2036 = param1.readString();
         this.var_2203 = param1.readString();
         this.var_1503 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2206;
      }
      
      public function get avatarName() : String
      {
         return this.var_1502;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2037;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2207;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2204;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2205;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2036;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2203;
      }
      
      public function get realName() : String
      {
         return this.var_1503;
      }
   }
}
