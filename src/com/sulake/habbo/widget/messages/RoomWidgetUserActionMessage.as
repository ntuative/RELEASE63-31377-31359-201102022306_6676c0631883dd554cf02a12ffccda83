package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_743:String = "RWUAM_WHISPER_USER";
      
      public static const const_700:String = "RWUAM_IGNORE_USER";
      
      public static const const_734:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_515:String = "RWUAM_KICK_USER";
      
      public static const const_668:String = "RWUAM_BAN_USER";
      
      public static const const_667:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_761:String = "RWUAM_RESPECT_USER";
      
      public static const const_625:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_707:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_855:String = "RWUAM_START_TRADING";
      
      public static const const_671:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_506:String = "RWUAM_KICK_BOT";
      
      public static const const_790:String = "RWUAM_REPORT";
      
      public static const const_529:String = "RWUAM_PICKUP_PET";
      
      public static const const_1519:String = "RWUAM_TRAIN_PET";
      
      public static const const_504:String = " RWUAM_RESPECT_PET";
      
      public static const const_387:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
