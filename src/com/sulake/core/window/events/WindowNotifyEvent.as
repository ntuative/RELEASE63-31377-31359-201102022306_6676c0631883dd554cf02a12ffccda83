package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1553:String = "WN_CRETAE";
      
      public static const const_1389:String = "WN_CREATED";
      
      public static const const_1089:String = "WN_DESTROY";
      
      public static const const_1181:String = "WN_DESTROYED";
      
      public static const const_1134:String = "WN_OPEN";
      
      public static const const_1186:String = "WN_OPENED";
      
      public static const const_968:String = "WN_CLOSE";
      
      public static const const_1082:String = "WN_CLOSED";
      
      public static const const_987:String = "WN_FOCUS";
      
      public static const const_1188:String = "WN_FOCUSED";
      
      public static const const_1002:String = "WN_UNFOCUS";
      
      public static const const_1057:String = "WN_UNFOCUSED";
      
      public static const const_1075:String = "WN_ACTIVATE";
      
      public static const const_381:String = "WN_ACTVATED";
      
      public static const const_1044:String = "WN_DEACTIVATE";
      
      public static const const_1191:String = "WN_DEACTIVATED";
      
      public static const const_510:String = "WN_SELECT";
      
      public static const const_332:String = "WN_SELECTED";
      
      public static const const_620:String = "WN_UNSELECT";
      
      public static const const_674:String = "WN_UNSELECTED";
      
      public static const const_1059:String = "WN_LOCK";
      
      public static const const_1163:String = "WN_LOCKED";
      
      public static const const_984:String = "WN_UNLOCK";
      
      public static const const_1036:String = "WN_UNLOCKED";
      
      public static const const_983:String = "WN_ENABLE";
      
      public static const const_786:String = "WN_ENABLED";
      
      public static const const_1074:String = "WN_DISABLE";
      
      public static const const_656:String = "WN_DISABLED";
      
      public static const const_820:String = "WN_RESIZE";
      
      public static const const_187:String = "WN_RESIZED";
      
      public static const const_1109:String = "WN_RELOCATE";
      
      public static const const_528:String = "WN_RELOCATED";
      
      public static const const_1158:String = "WN_MINIMIZE";
      
      public static const const_1166:String = "WN_MINIMIZED";
      
      public static const const_1073:String = "WN_MAXIMIZE";
      
      public static const const_1088:String = "WN_MAXIMIZED";
      
      public static const const_1126:String = "WN_RESTORE";
      
      public static const const_1021:String = "WN_RESTORED";
      
      public static const const_1754:String = "WN_ARRANGE";
      
      public static const const_1736:String = "WN_ARRANGED";
      
      public static const const_1761:String = "WN_UPDATE";
      
      public static const const_1879:String = "WN_UPDATED";
      
      public static const const_358:String = "WN_CHILD_ADDED";
      
      public static const const_794:String = "WN_CHILD_REMOVED";
      
      public static const const_274:String = "WN_CHILD_RESIZED";
      
      public static const const_288:String = "WN_CHILD_RELOCATED";
      
      public static const const_227:String = "WN_CHILD_ACTIVATED";
      
      public static const const_434:String = "WN_PARENT_ADDED";
      
      public static const const_1200:String = "WN_PARENT_REMOVED";
      
      public static const const_566:String = "WN_PARENT_RESIZED";
      
      public static const const_1068:String = "WN_PARENT_RELOCATED";
      
      public static const const_636:String = "WN_PARENT_ACTIVATED";
      
      public static const const_437:String = "WN_STATE_UPDATED";
      
      public static const const_476:String = "WN_STYLE_UPDATED";
      
      public static const const_507:String = "WN_PARAM_UPDATED";
      
      public static const const_1732:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1971,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
