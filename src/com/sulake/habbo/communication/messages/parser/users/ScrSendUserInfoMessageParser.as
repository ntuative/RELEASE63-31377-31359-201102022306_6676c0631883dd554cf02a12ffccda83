package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1869:int = 1;
      
      public static const const_1583:int = 2;
       
      
      private var var_938:String;
      
      private var var_2433:int;
      
      private var var_2430:int;
      
      private var var_2431:int;
      
      private var var_2428:int;
      
      private var var_2427:Boolean;
      
      private var var_2264:Boolean;
      
      private var var_2346:int;
      
      private var var_2345:int;
      
      private var var_2434:Boolean;
      
      private var var_2429:int;
      
      private var var_2432:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_938 = param1.readString();
         this.var_2433 = param1.readInteger();
         this.var_2430 = param1.readInteger();
         this.var_2431 = param1.readInteger();
         this.var_2428 = param1.readInteger();
         this.var_2427 = param1.readBoolean();
         this.var_2264 = param1.readBoolean();
         this.var_2346 = param1.readInteger();
         this.var_2345 = param1.readInteger();
         this.var_2434 = param1.readBoolean();
         this.var_2429 = param1.readInteger();
         this.var_2432 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_938;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2433;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2430;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2431;
      }
      
      public function get responseType() : int
      {
         return this.var_2428;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2427;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2264;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2346;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2345;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2434;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2429;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2432;
      }
   }
}
