package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1360:String = "WE_CREATE";
      
      public static const const_1475:String = "WE_CREATED";
      
      public static const const_1594:String = "WE_DESTROY";
      
      public static const const_307:String = "WE_DESTROYED";
      
      public static const const_1450:String = "WE_OPEN";
      
      public static const const_1621:String = "WE_OPENED";
      
      public static const const_1491:String = "WE_CLOSE";
      
      public static const const_1605:String = "WE_CLOSED";
      
      public static const const_1567:String = "WE_FOCUS";
      
      public static const const_195:String = "WE_FOCUSED";
      
      public static const const_1610:String = "WE_UNFOCUS";
      
      public static const const_1405:String = "WE_UNFOCUSED";
      
      public static const const_1399:String = "WE_ACTIVATE";
      
      public static const const_1354:String = "WE_ACTIVATED";
      
      public static const const_1608:String = "WE_DEACTIVATE";
      
      public static const const_686:String = "WE_DEACTIVATED";
      
      public static const const_451:String = "WE_SELECT";
      
      public static const const_58:String = "WE_SELECTED";
      
      public static const const_774:String = "WE_UNSELECT";
      
      public static const const_861:String = "WE_UNSELECTED";
      
      public static const const_1829:String = "WE_ATTACH";
      
      public static const const_1858:String = "WE_ATTACHED";
      
      public static const const_1909:String = "WE_DETACH";
      
      public static const const_1731:String = "WE_DETACHED";
      
      public static const const_1517:String = "WE_LOCK";
      
      public static const const_1600:String = "WE_LOCKED";
      
      public static const const_1371:String = "WE_UNLOCK";
      
      public static const const_1435:String = "WE_UNLOCKED";
      
      public static const const_713:String = "WE_ENABLE";
      
      public static const const_298:String = "WE_ENABLED";
      
      public static const const_868:String = "WE_DISABLE";
      
      public static const const_251:String = "WE_DISABLED";
      
      public static const const_1386:String = "WE_RELOCATE";
      
      public static const const_362:String = "WE_RELOCATED";
      
      public static const const_1601:String = "WE_RESIZE";
      
      public static const const_45:String = "WE_RESIZED";
      
      public static const const_1514:String = "WE_MINIMIZE";
      
      public static const const_1631:String = "WE_MINIMIZED";
      
      public static const const_1483:String = "WE_MAXIMIZE";
      
      public static const const_1570:String = "WE_MAXIMIZED";
      
      public static const const_1390:String = "WE_RESTORE";
      
      public static const const_1445:String = "WE_RESTORED";
      
      public static const const_1854:String = "WE_ARRANGE";
      
      public static const const_1891:String = "WE_ARRANGED";
      
      public static const const_102:String = "WE_UPDATE";
      
      public static const const_1760:String = "WE_UPDATED";
      
      public static const const_1751:String = "WE_CHILD_RELOCATE";
      
      public static const const_461:String = "WE_CHILD_RELOCATED";
      
      public static const const_1904:String = "WE_CHILD_RESIZE";
      
      public static const const_289:String = "WE_CHILD_RESIZED";
      
      public static const const_1866:String = "WE_CHILD_REMOVE";
      
      public static const const_540:String = "WE_CHILD_REMOVED";
      
      public static const const_1789:String = "WE_PARENT_RELOCATE";
      
      public static const const_1878:String = "WE_PARENT_RELOCATED";
      
      public static const const_1868:String = "WE_PARENT_RESIZE";
      
      public static const const_1524:String = "WE_PARENT_RESIZED";
      
      public static const const_184:String = "WE_OK";
      
      public static const const_730:String = "WE_CANCEL";
      
      public static const const_107:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_517:String = "WE_SCROLL";
      
      public static const const_156:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1971:IWindow;
      
      protected var var_1972:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1971 = param3;
         this.var_1972 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1971;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1972 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1972;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
