package com.sulake.habbo.tracking
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.runtime.events.ErrorEvent;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.habbo.advertisement.IAdManager;
   import com.sulake.habbo.advertisement.events.AdEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.enum.HabboCatalogTrackingEvent;
   import com.sulake.habbo.catalog.navigation.events.CatalogPageOpenedEvent;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.enum.HabboCommunicationEvent;
   import com.sulake.habbo.communication.enum.HabboHotelViewEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogIndexMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.handshake.AuthenticationOKMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.notifications.HabboAchievementNotificationMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.engine.RoomEntryInfoMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.session.CloseConnectionMessageEvent;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.friendlist.IHabboFriendList;
   import com.sulake.habbo.friendlist.events.HabboFriendListTrackingEvent;
   import com.sulake.habbo.help.IHabboHelp;
   import com.sulake.habbo.help.enum.HabboHelpTrackingEvent;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.inventory.events.HabboInventoryTrackingEvent;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.navigator.IHabboNavigator;
   import com.sulake.habbo.navigator.events.HabboNavigatorTrackingEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.events.RoomObjectRoomAdEvent;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.widget.IRoomWidgetFactory;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowTrackingEvent;
   import com.sulake.iid.IIDHabboAdManager;
   import com.sulake.iid.IIDHabboCatalog;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboFriendList;
   import com.sulake.iid.IIDHabboHelp;
   import com.sulake.iid.IIDHabboInventory;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboNavigator;
   import com.sulake.iid.IIDHabboRoomWidget;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDRoomEngine;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   import iid.IIDHabboWindowManager;
   
   public class HabboTracking extends Component implements IHabboTracking, IUpdateReceiver
   {
      
      private static const const_963:uint = 11;
      
      private static var _instance:HabboTracking;
       
      
      private var var_182:IHabboConfigurationManager;
      
      private var _localization:IHabboLocalizationManager;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_298:IAdManager;
      
      private var var_53:IRoomWidgetFactory;
      
      private var _catalog:IHabboCatalog;
      
      private var _navigator:IHabboNavigator;
      
      private var _inventory:IHabboInventory;
      
      private var var_198:IHabboFriendList;
      
      private var var_1199:IHabboWindowManager;
      
      private var var_178:IHabboToolbar;
      
      private var var_177:IHabboHelp;
      
      private var var_1463:Array;
      
      private var _crashed:Boolean = false;
      
      private var var_2809:Boolean = false;
      
      private var var_264:PerformanceTracker = null;
      
      private var var_634:FramerateTracker = null;
      
      private var var_263:LatencyTracker = null;
      
      private var var_635:LagWarningLogger = null;
      
      private var var_636:ToolbarClickTracker = null;
      
      private var _roomEngine:IRoomEngine = null;
      
      private var _connection:IConnection = null;
      
      private var var_2712:Boolean = false;
      
      private var var_519:int = -1;
      
      private var var_1916:int = 0;
      
      private var var_1915:int = 0;
      
      public function HabboTracking(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         if(_instance == null)
         {
            _instance = this;
         }
         super(param1,param2,param3);
         this.var_264 = new PerformanceTracker();
         this.var_634 = new FramerateTracker();
         this.var_263 = new LatencyTracker();
         this.var_635 = new LagWarningLogger();
         this.var_636 = new ToolbarClickTracker(this);
         this.var_1463 = new Array(const_963);
         var _loc4_:int = 0;
         while(_loc4_ < const_963)
         {
            this.var_1463[_loc4_] = 0;
            _loc4_++;
         }
         var _loc5_:IContext = param1.root;
         if(_loc5_ != null)
         {
            _loc5_.events.addEventListener(Component.COMPONENT_EVENT_ERROR,this.onError);
            _loc5_.events.addEventListener(Component.COMPONENT_EVENT_RUNNING,this.onCoreRunning);
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1523,new Date().getTime().toString());
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1529,!true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown");
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1388,Capabilities.serverString);
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_837,String(false));
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1171,String(0));
         }
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationReady);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDHabboNavigator(),this.onNavigatorReady);
         queueInterface(new IIDHabboCatalog(),this.onCatalogReady);
         queueInterface(new IIDHabboInventory(),this.onInventoryReady);
         queueInterface(new IIDHabboFriendList(),this.onFriendlistReady);
         queueInterface(new IIDHabboRoomWidget(),this.onRoomWidgetReady);
         queueInterface(new IIDHabboHelp(),this.onHelpReady);
         queueInterface(new IIDRoomEngine(),this.onRoomEngineReady);
         queueInterface(new IIDHabboAdManager(),this.onAdManagerReady);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
         registerUpdateReceiver(this,1);
      }
      
      public static function getInstance() : HabboTracking
      {
         return _instance;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(_instance == this)
            {
               _instance = null;
            }
            if(this._communication)
            {
               this._communication.release(new IIDHabboCommunicationManager());
               this._communication = null;
            }
            if(this.var_182)
            {
               this.var_182.release(new IIDHabboConfigurationManager());
               this.var_182 = null;
            }
            if(this._localization)
            {
               this._localization.release(new IIDHabboLocalizationManager());
               this._localization = null;
            }
            if(this.var_1199)
            {
               this.var_1199.release(new IIDHabboWindowManager());
               this.var_1199 = null;
            }
            if(this.var_298)
            {
               this.var_298.release(new IIDHabboAdManager());
               this.var_298 = null;
            }
            if(this.var_53)
            {
               this.var_53.release(new IIDHabboRoomWidget());
               this.var_53 = null;
            }
            if(this._navigator)
            {
               if(!this._navigator.disposed)
               {
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_CLOSED,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_EVENTS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ROOMS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ME,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCH,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_OFFICIAL,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_LATEST_EVENTS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FAVOURITES,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FRIENDS_ROOMS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_HISTORY,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_ROOMS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_OFFICIALROOMS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_POPULAR_ROOMS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WHERE_MY_FRIENDS_ARE,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WITH_HIGHEST_SCORE,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TAG_SEARCH,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TEXT_SEARCH,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED,this.onRoomSettingsTrackingEvent);
                  this._navigator.events.removeEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT,this.onRoomSettingsTrackingEvent);
                  this._navigator.events.removeEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_ADVANCED,this.onRoomSettingsTrackingEvent);
                  this._navigator.events.removeEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS,this.onRoomSettingsTrackingEvent);
               }
               this._navigator.release(new IIDHabboNavigator());
               this._navigator = null;
            }
            if(this._catalog)
            {
               if(!this._catalog.disposed)
               {
                  this._catalog.events.removeEventListener(HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_CLOSE,this.onCatalogTrackingEvent);
                  this._catalog.events.removeEventListener(HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_OPEN,this.onCatalogTrackingEvent);
               }
               this._catalog.release(new IIDHabboCatalog());
               this._catalog = null;
            }
            if(this._inventory)
            {
               if(!this._inventory.disposed)
               {
                  Component(this._inventory).events.removeEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_CLOSED,this.onInvetoryTrackingEvent);
                  Component(this._inventory).events.removeEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_FURNI,this.onInvetoryTrackingEvent);
                  Component(this._inventory).events.removeEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_POSTERS,this.onInvetoryTrackingEvent);
                  Component(this._inventory).events.removeEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_BADGES,this.onInvetoryTrackingEvent);
                  Component(this._inventory).events.removeEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_ACHIEVEMENTS,this.onInvetoryTrackingEvent);
                  Component(this._inventory).events.removeEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_TRADING,this.onInvetoryTrackingEvent);
               }
               this._inventory.release(new IIDHabboInventory());
               this._inventory = null;
            }
            if(this.var_198)
            {
               if(!this.var_198.disposed)
               {
                  Component(this.var_198).events.removeEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED,this.onFriendlistTrackingEvent);
                  Component(this.var_198).events.removeEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_FRIENDS,this.onFriendlistTrackingEvent);
                  Component(this.var_198).events.removeEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_SEARCH,this.onFriendlistTrackingEvent);
                  Component(this.var_198).events.removeEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_REQUEST,this.onFriendlistTrackingEvent);
                  Component(this.var_198).events.removeEventListener(HabboFriendListTrackingEvent.const_366,this.onFriendlistTrackingEvent);
               }
               this.var_198.release(new IIDHabboFriendList());
               this.var_198 = null;
            }
            if(this.var_177)
            {
               if(!this.var_177.disposed)
               {
                  this.var_177.events.removeEventListener(HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_CLOSED,this.onHelpTrackingEvent);
                  this.var_177.events.removeEventListener(HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_DEFAULT,this.onHelpTrackingEvent);
               }
               this.var_177.release(new IIDHabboHelp());
               this.var_177 = null;
            }
            if(this.var_178)
            {
               if(!this.var_178.disposed)
               {
                  this.var_178.events.removeEventListener(HabboToolbarEvent.const_40,this.onToolbarClick);
               }
               this.var_178.release(new IIDHabboToolbar());
               this.var_178 = null;
            }
            if(this._roomEngine)
            {
               this._roomEngine.release(new IIDRoomEngine());
               this._roomEngine = null;
            }
            removeUpdateReceiver(this);
            if(this.var_264 != null)
            {
               this.var_264.dispose();
               this.var_264 = null;
            }
            if(this.var_634 != null)
            {
               this.var_634.dispose();
               this.var_634 = null;
            }
            if(this.var_263 != null)
            {
               this.var_263.dispose();
               this.var_263 = null;
            }
            if(this.var_636)
            {
               this.var_636.dispose();
               this.var_636 = null;
            }
            this._connection = null;
            super.dispose();
         }
      }
      
      private function setErrorContextFlag(param1:uint, param2:uint) : void
      {
         this.var_1463[param2] = param1;
      }
      
      private function onConfigurationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_182 = IHabboConfigurationManager(param2);
         if(this.var_182)
         {
            if(this.var_263 != null)
            {
               this.var_263.configuration = this.var_182;
            }
            if(this.var_264 != null)
            {
               this.var_264.configuration = this.var_182;
            }
            this.setErrorContextFlag(1,0);
            this.trackLoginStep(HabboLoginTrackingStep.const_1520);
            if(this.var_182)
            {
               if(this.var_635 != null)
               {
                  this.var_635.configure(this.var_182);
               }
               if(this.var_634 != null)
               {
                  this.var_634.configure(this.var_182);
               }
               if(this.var_636 != null)
               {
                  this.var_636.configure(this.var_182);
               }
            }
         }
      }
      
      private function onLocalizationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._localization = IHabboLocalizationManager(param2);
         this.setErrorContextFlag(1,1);
         this.trackLoginStep(HabboLoginTrackingStep.const_159);
      }
      
      private function onCommunicationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._communication = IHabboCommunicationManager(param2);
         if(this._communication != null)
         {
            this._communication.addHabboConnectionMessageEvent(new AuthenticationOKMessageEvent(this.onAuthOK));
            this._communication.addHabboConnectionMessageEvent(new RoomEntryInfoMessageEvent(this.onRoomEnter));
            this._communication.addHabboConnectionMessageEvent(new CatalogIndexMessageEvent(this.onOpenCatalogue));
            this._communication.addHabboConnectionMessageEvent(new HabboAchievementNotificationMessageEvent(this.onAchievementNotification));
            this._connection = this._communication.getHabboMainConnection(this.onConnectionReady);
            if(this._connection != null)
            {
               this.onConnectionReady(this._connection);
            }
         }
         Component(context).events.addEventListener(HabboCommunicationEvent.INIT,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboCommunicationEvent.const_757,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboCommunicationEvent.const_258,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboCommunicationEvent.const_190,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboCommunicationEvent.const_186,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboCommunicationEvent.const_246,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboCommunicationEvent.const_218,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboHotelViewEvent.const_737,this.onHotelViewEvent);
         Component(context).events.addEventListener(HabboHotelViewEvent.const_67,this.onHotelViewEvent);
         Component(context).events.addEventListener(HabboHotelViewEvent.const_482,this.onHotelViewEvent);
      }
      
      private function onConnectionReady(param1:IConnection) : void
      {
         if(disposed)
         {
            return;
         }
         if(param1 != null)
         {
            this._connection = param1;
            if(this.var_264 != null)
            {
               this.var_264.connection = param1;
            }
            if(this.var_263 != null)
            {
               this.var_263.communication = this._communication;
               this.var_263.connection = param1;
            }
            if(this.var_635 != null)
            {
               this.var_635.connection = param1;
            }
         }
      }
      
      private function onHotelViewEvent(param1:Event) : void
      {
         if(param1.type == HabboHotelViewEvent.const_737)
         {
            this.trackLoginStep(HabboLoginTrackingStep.const_1573);
         }
         else if(param1.type == HabboHotelViewEvent.const_482)
         {
            this.trackLoginStep(HabboLoginTrackingStep.const_1581);
         }
         else if(param1.type == HabboHotelViewEvent.const_67)
         {
            this.trackLoginStep(HabboLoginTrackingStep.const_1611);
         }
      }
      
      private function onConnectionEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboCommunicationEvent.INIT:
               this.trackLoginStep(HabboLoginTrackingStep.const_1552);
               break;
            case HabboCommunicationEvent.const_757:
               this.trackLoginStep(HabboLoginTrackingStep.const_1562,String(this._communication.port));
               break;
            case HabboCommunicationEvent.const_258:
               this.trackLoginStep(HabboLoginTrackingStep.const_258);
               break;
            case HabboCommunicationEvent.const_186:
               this.trackLoginStep(HabboLoginTrackingStep.const_186);
               break;
            case HabboCommunicationEvent.const_190:
               this.setErrorContextFlag(2,0);
               this.trackLoginStep(HabboLoginTrackingStep.const_190);
               break;
            case HabboCommunicationEvent.const_246:
               this.setErrorContextFlag(3,0);
               this.trackLoginStep(HabboLoginTrackingStep.const_246);
               if(this.var_263 != null)
               {
                  this.var_263.init();
               }
               break;
            case HabboCommunicationEvent.const_218:
               this.trackLoginStep(HabboLoginTrackingStep.const_218);
         }
         if(this._communication)
         {
            Component(context).events.removeEventListener(param1.type,this.onConnectionEvent);
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_1199 = IHabboWindowManager(param2);
         if(this.var_1199)
         {
            Component(context).events.addEventListener(HabboWindowTrackingEvent.HABBO_WINDOW_TRACKING_EVENT_INPUT,this.onWindowEvent);
            Component(context).events.addEventListener(HabboWindowTrackingEvent.HABBO_WINDOW_TRACKING_EVENT_RENDER,this.onWindowEvent);
            Component(context).events.addEventListener(HabboWindowTrackingEvent.HABBO_WINDOW_TRACKING_EVENT_SLEEP,this.onWindowEvent);
         }
      }
      
      private function onWindowEvent(param1:Event) : void
      {
         if(param1.type == HabboWindowTrackingEvent.HABBO_WINDOW_TRACKING_EVENT_SLEEP)
         {
            this.setErrorContextFlag(0,3);
         }
         else if(param1.type == HabboWindowTrackingEvent.HABBO_WINDOW_TRACKING_EVENT_RENDER)
         {
            this.setErrorContextFlag(1,3);
         }
         else if(param1.type == HabboWindowTrackingEvent.HABBO_WINDOW_TRACKING_EVENT_INPUT)
         {
            this.setErrorContextFlag(2,3);
         }
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         if(param1.critical && !this._crashed)
         {
            this._crashed = true;
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_20,new Date().getTime().toString());
            if(this.var_182)
            {
               if(this.var_182.keyExists("client.fatal.error.url"))
               {
                  _loc2_ = this.var_182.getKey("client.fatal.error.url");
                  _loc3_ = new URLRequest(_loc2_);
                  _loc4_ = new URLVariables();
                  _loc5_ = ErrorReportStorage.getParameterNames();
                  _loc6_ = _loc5_.length;
                  _loc7_ = 0;
                  while(_loc7_ < _loc6_)
                  {
                     _loc4_[_loc5_[_loc7_]] = ErrorReportStorage.getParameter(_loc5_[_loc7_]);
                     _loc7_++;
                  }
                  _loc8_ = "";
                  for each(_loc9_ in this.var_1463)
                  {
                     _loc8_ += String(_loc9_);
                  }
                  _loc4_["null"] = _loc8_;
                  if(this.var_264 != null)
                  {
                     _loc4_["null"] = this.var_264.flashVersion;
                     _loc4_["null"] = this.var_264.averageUpdateInterval;
                  }
                  ErrorReportStorage.addDebugData("Flash memory usage","Memory usage: " + Math.round(0 / (1024 * 1024)) + " MB");
                  _loc4_["null"] = ErrorReportStorage.getDebugData();
                  _loc3_.data = _loc4_;
                  _loc3_.method = URLRequestMethod.POST;
                  navigateToURL(_loc3_,"_self");
               }
            }
         }
         this.logError(context.root.getLastErrorMessage());
      }
      
      private function onCoreRunning(param1:Event) : void
      {
         this.trackLoginStep(HabboLoginTrackingStep.const_1019);
         if(context && false)
         {
            context.root.events.removeEventListener(HabboLoginTrackingStep.const_1019,this.onCoreRunning);
         }
      }
      
      private function onNavigatorReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._navigator = IHabboNavigator(param2) as IHabboNavigator;
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_CLOSED,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_EVENTS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ROOMS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ME,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCH,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_OFFICIAL,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_LATEST_EVENTS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FAVOURITES,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FRIENDS_ROOMS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_HISTORY,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_ROOMS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_OFFICIALROOMS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_POPULAR_ROOMS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WHERE_MY_FRIENDS_ARE,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WITH_HIGHEST_SCORE,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TAG_SEARCH,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TEXT_SEARCH,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED,this.onRoomSettingsTrackingEvent);
         this._navigator.events.addEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT,this.onRoomSettingsTrackingEvent);
         this._navigator.events.addEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_ADVANCED,this.onRoomSettingsTrackingEvent);
         this._navigator.events.addEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS,this.onRoomSettingsTrackingEvent);
      }
      
      private function onNavigatorTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_CLOSED:
               this.setErrorContextFlag(0,4);
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_EVENTS:
               this.setErrorContextFlag(1,4);
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ROOMS:
               this.setErrorContextFlag(2,4);
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ME:
               this.setErrorContextFlag(3,4);
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_OFFICIAL:
               this.setErrorContextFlag(4,4);
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCH:
               this.setErrorContextFlag(5,4);
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_LATEST_EVENTS:
               this.legacyTrack("navigator","latest_events");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FAVOURITES:
               this.legacyTrack("navigator","my_favorites");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FRIENDS_ROOMS:
               this.legacyTrack("navigator","my_friends_rooms");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_HISTORY:
               this.legacyTrack("navigator","my_history");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_ROOMS:
               this.legacyTrack("navigator","my_rooms");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_OFFICIALROOMS:
               this.legacyTrack("navigator","official_rooms");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_POPULAR_ROOMS:
               this.legacyTrack("navigator","popular_rooms");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WHERE_MY_FRIENDS_ARE:
               this.legacyTrack("navigator","rooms_where_my_friends_are");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WITH_HIGHEST_SCORE:
               this.legacyTrack("navigator","highest_score");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TAG_SEARCH:
               this.legacyTrack("navigator","tag_search");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TEXT_SEARCH:
               this.legacyTrack("navigator","text_search");
         }
      }
      
      private function onRoomSettingsTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED:
               this.setErrorContextFlag(0,7);
               break;
            case HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT:
               this.setErrorContextFlag(1,7);
               break;
            case HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_ADVANCED:
               this.setErrorContextFlag(2,7);
         }
      }
      
      private function onInventoryReady(param1:IID, param2:IUnknown) : void
      {
         this._inventory = param2 as IHabboInventory;
         Component(this._inventory).events.addEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_CLOSED,this.onInvetoryTrackingEvent);
         Component(this._inventory).events.addEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_FURNI,this.onInvetoryTrackingEvent);
         Component(this._inventory).events.addEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_POSTERS,this.onInvetoryTrackingEvent);
         Component(this._inventory).events.addEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_BADGES,this.onInvetoryTrackingEvent);
         Component(this._inventory).events.addEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_ACHIEVEMENTS,this.onInvetoryTrackingEvent);
         Component(this._inventory).events.addEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_TRADING,this.onInvetoryTrackingEvent);
      }
      
      private function onInvetoryTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_CLOSED:
               this.setErrorContextFlag(0,5);
               break;
            case HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_FURNI:
               this.setErrorContextFlag(1,5);
               break;
            case HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_POSTERS:
               this.setErrorContextFlag(2,5);
               break;
            case HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_BADGES:
               this.setErrorContextFlag(3,5);
               break;
            case HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_ACHIEVEMENTS:
               this.setErrorContextFlag(4,5);
               break;
            case HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_TRADING:
               this.setErrorContextFlag(5,5);
         }
      }
      
      private function onCatalogReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._catalog = IHabboCatalog(param2) as IHabboCatalog;
         this._catalog.events.addEventListener(CatalogPageOpenedEvent.CATALOG_PAGE_OPENED,this.onCatalogPageOpened);
         this._catalog.events.addEventListener(HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_OPEN,this.onCatalogTrackingEvent);
         this._catalog.events.addEventListener(HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_CLOSE,this.onCatalogTrackingEvent);
      }
      
      private function onOpenCatalogue(param1:IMessageEvent) : void
      {
         this.legacyTrack("catalogue","open");
      }
      
      private function onAchievementNotification(param1:HabboAchievementNotificationMessageEvent) : void
      {
         this.legacyTrack("achievement","achievement",[param1.badgeID]);
      }
      
      private function onCatalogPageOpened(param1:CatalogPageOpenedEvent) : void
      {
         this.legacyTrack("catalogue","page",[param1.pageLocalization]);
      }
      
      private function onCatalogTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_OPEN:
               this.setErrorContextFlag(1,9);
               break;
            case HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_CLOSE:
               this.setErrorContextFlag(0,9);
         }
      }
      
      private function onFriendlistReady(param1:IID, param2:IUnknown) : void
      {
         this.var_198 = param2 as IHabboFriendList;
         Component(this.var_198).events.addEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED,this.onFriendlistTrackingEvent);
         Component(this.var_198).events.addEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_FRIENDS,this.onFriendlistTrackingEvent);
         Component(this.var_198).events.addEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_SEARCH,this.onFriendlistTrackingEvent);
         Component(this.var_198).events.addEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_REQUEST,this.onFriendlistTrackingEvent);
         Component(this.var_198).events.addEventListener(HabboFriendListTrackingEvent.const_366,this.onFriendlistTrackingEvent);
      }
      
      private function onFriendlistTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED:
               this.setErrorContextFlag(0,6);
               break;
            case HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_FRIENDS:
               this.setErrorContextFlag(1,6);
               break;
            case HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_SEARCH:
               this.setErrorContextFlag(2,6);
               break;
            case HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_REQUEST:
               this.setErrorContextFlag(3,6);
               break;
            case HabboFriendListTrackingEvent.const_366:
               this.setErrorContextFlag(4,6);
         }
      }
      
      private function onRoomWidgetReady(param1:IID, param2:IUnknown) : void
      {
         this.var_53 = param2 as IRoomWidgetFactory;
         Component(this.var_53).events.addEventListener(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE,this.onWidgetTrackingEvent);
         Component(this.var_53).events.addEventListener(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT,this.onWidgetTrackingEvent);
         Component(this.var_53).events.addEventListener(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE,this.onWidgetTrackingEvent);
         Component(this.var_53).events.addEventListener(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS,this.onWidgetTrackingEvent);
      }
      
      private function onWidgetTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE:
               this.setErrorContextFlag(0,8);
               break;
            case HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT:
               this.setErrorContextFlag(1,8);
               break;
            case HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE:
               this.setErrorContextFlag(2,8);
               break;
            case HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS:
               this.setErrorContextFlag(3,8);
         }
      }
      
      private function onHelpReady(param1:IID, param2:IUnknown) : void
      {
         this.var_177 = param2 as IHabboHelp;
         this.var_177.events.addEventListener(HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_CLOSED,this.onHelpTrackingEvent);
         this.var_177.events.addEventListener(HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_DEFAULT,this.onHelpTrackingEvent);
      }
      
      private function onHelpTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_CLOSED:
               this.setErrorContextFlag(0,10);
               break;
            case HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_DEFAULT:
               this.setErrorContextFlag(1,10);
         }
      }
      
      private function onAuthOK(param1:IMessageEvent) : void
      {
         this.legacyTrack("authentication","authok");
      }
      
      private function onRoomEnter(param1:IMessageEvent) : void
      {
         if(!this.var_2712)
         {
            this.trackLoginStep(HabboLoginTrackingStep.const_1564);
            this.var_2712 = true;
         }
         var _loc2_:RoomEntryInfoMessageParser = RoomEntryInfoMessageEvent(param1).getParser();
         if(_loc2_.guestRoom)
         {
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1171,String(_loc2_.guestRoomId));
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_837,String(true));
            this.legacyTrack("navigator","private",[_loc2_.guestRoomId]);
         }
         else if(_loc2_.publicSpace != null)
         {
            if(_loc2_.publicSpace.worldId == 0)
            {
               this.legacyTrack("navigator","public",[_loc2_.publicSpace.unitPropertySet]);
            }
            else
            {
               this.legacyTrack("navigator","public",[_loc2_.publicSpace.unitPropertySet + "/" + _loc2_.publicSpace.worldId]);
            }
         }
      }
      
      private function onRoomLeave(param1:CloseConnectionMessageEvent) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_837,String(false));
      }
      
      private function onRoomEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._roomEngine = param2 as IRoomEngine;
         if(this._roomEngine == null)
         {
            return;
         }
         Component(this._roomEngine).events.addEventListener(RoomObjectRoomAdEvent.const_283,this.onRoomAdClick);
      }
      
      private function onAdManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_298 = param2 as IAdManager;
         this.var_298.events.addEventListener(AdEvent.const_439,this.onRoomAdLoad);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_178 = param2 as IHabboToolbar;
         this.var_178.events.addEventListener(HabboToolbarEvent.const_40,this.onToolbarClick);
      }
      
      private function onRoomAdLoad(param1:AdEvent) : void
      {
         this.legacyTrack("room_ad","show",[this.getAliasFromAdTechUrl(param1.clickUrl)]);
      }
      
      private function onRoomAdClick(param1:RoomObjectRoomAdEvent) : void
      {
         this.legacyTrack("room_ad","click",[this.getAliasFromAdTechUrl(param1.clickUrl)]);
      }
      
      private function getAliasFromAdTechUrl(param1:String) : String
      {
         var _loc2_:Array = param1.match(/;alias=([^;]+)/);
         if(_loc2_ != null && _loc2_.length > 1)
         {
            return _loc2_[1];
         }
         return "unknown";
      }
      
      private function onToolbarClick(param1:HabboToolbarEvent) : void
      {
         if(this.var_636)
         {
            this.var_636.track(param1.iconName);
         }
      }
      
      public function legacyTrack(param1:String, param2:String, param3:Array = null) : void
      {
         Logger.log("legacyTrack(" + param1 + ", " + param2 + ", " + param3 + ")");
         if(false)
         {
            ExternalInterface.call("FlashExternalInterface.legacyTrack",param1,param2,param3 == null ? [] : param3);
         }
         else
         {
            Logger.log("com.sulake.habbo.tracking: ExternalInterface is not available, tracking is disabled");
         }
      }
      
      public function track(param1:String, param2:String, param3:int = -1) : void
      {
         Logger.log("track(" + param1 + ", " + param2 + ", " + param3 + ")");
         if(false)
         {
            ExternalInterface.call("FlashExternalInterface.track",param1,param2,param3);
         }
         else
         {
            Logger.log("com.sulake.habbo.tracking: ExternalInterface is not available, tracking is disabled");
         }
      }
      
      public function trackLoginStep(param1:String, param2:String = null) : void
      {
         if(this.var_182 != null && !Boolean(this.var_182.getKey("processlog.enabled")))
         {
            return;
         }
         Logger.log("* Track Login Step: " + param1);
         if(false)
         {
            if(param2 != null)
            {
               ExternalInterface.call("FlashExternalInterface.logLoginStep",param1,param2);
            }
            else
            {
               ExternalInterface.call("FlashExternalInterface.logLoginStep",param1);
            }
         }
         else
         {
            Logger.log("HabboMain: ExternalInterface is not available, tracking is disabled");
         }
      }
      
      public function logError(param1:String) : void
      {
         Logger.log("logError(" + param1 + ")");
         if(false)
         {
            ExternalInterface.call("FlashExternalInterface.logError",param1);
         }
         else
         {
            Logger.log("com.sulake.habbo.tracking: ExternalInterface is not available, tracking is disabled");
         }
      }
      
      public function chatLagDetected(param1:int) : void
      {
         this.var_635.chatLagDetected(param1);
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = getTimer();
         if(this.var_519 > -1 && _loc2_ < this.var_519)
         {
            ++this.var_1916;
            ErrorReportStorage.addDebugData("Invalid time counter","Invalid times: " + this.var_1916);
         }
         if(this.var_519 > -1 && _loc2_ - this.var_519 > 15000)
         {
            ++this.var_1915;
            ErrorReportStorage.addDebugData("Time leap counter","Time leaps: " + this.var_1915);
         }
         this.var_519 = _loc2_;
         if(this.var_264 != null)
         {
            this.var_264.update(param1,this.var_519);
         }
         if(this.var_263 != null)
         {
            this.var_263.update(param1,this.var_519);
         }
         if(this.var_634 != null)
         {
            this.var_634.trackUpdate(param1,this,this.var_519);
         }
         if(this.var_635 != null)
         {
            this.var_635.update(this.var_519);
         }
      }
   }
}
