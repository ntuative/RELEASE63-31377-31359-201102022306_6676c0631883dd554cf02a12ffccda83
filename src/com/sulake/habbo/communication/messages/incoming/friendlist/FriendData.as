package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_886:int;
      
      private var var_650:Boolean;
      
      private var var_1494:Boolean;
      
      private var var_585:String;
      
      private var var_1418:int;
      
      private var var_1808:String;
      
      private var var_1504:String;
      
      private var var_1503:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_886 = param1.readInteger();
         this.var_650 = param1.readBoolean();
         this.var_1494 = param1.readBoolean();
         this.var_585 = param1.readString();
         this.var_1418 = param1.readInteger();
         this.var_1808 = param1.readString();
         this.var_1504 = param1.readString();
         this.var_1503 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_886;
      }
      
      public function get online() : Boolean
      {
         return this.var_650;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1494;
      }
      
      public function get figure() : String
      {
         return this.var_585;
      }
      
      public function get categoryId() : int
      {
         return this.var_1418;
      }
      
      public function get motto() : String
      {
         return this.var_1808;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1504;
      }
      
      public function get realName() : String
      {
         return this.var_1503;
      }
   }
}
