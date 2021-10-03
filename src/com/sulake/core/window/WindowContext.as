package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_565:uint = 0;
      
      public static const const_1470:uint = 1;
      
      public static const const_1937:int = 0;
      
      public static const const_1919:int = 1;
      
      public static const const_1873:int = 2;
      
      public static const const_1744:int = 3;
      
      public static const const_1579:int = 4;
      
      public static const const_333:int = 5;
      
      public static var var_1472:IMouseCursor;
      
      public static var var_369:IEventQueue;
      
      private static var var_561:IEventProcessor;
      
      private static var var_1630:uint = const_565;
      
      private static var stage:Stage;
      
      private static var var_139:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2278:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_185:DisplayObjectContainer;
      
      protected var var_2783:Boolean = true;
      
      protected var var_1217:Error;
      
      protected var var_1973:int = -1;
      
      protected var var_1219:IInternalWindowServices;
      
      protected var var_1475:IWindowParser;
      
      protected var var_2729:IWindowFactory;
      
      protected var var_135:IDesktopWindow;
      
      protected var var_1476:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_521:Boolean = false;
      
      private var var_2279:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_139 = param2;
         this._localization = param4;
         this.var_185 = param5;
         this.var_1219 = new ServiceManager(this,param5);
         this.var_2729 = param3;
         this.var_1475 = new WindowParser(this);
         this.var_2278 = param7;
         if(!stage)
         {
            if(this.var_185 is Stage)
            {
               stage = this.var_185 as Stage;
            }
            else if(this.var_185.stage)
            {
               stage = this.var_185.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_135 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_185.addChild(this.var_135.getDisplayObject());
         this.var_185.doubleClickEnabled = true;
         this.var_185.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_139,this.var_135,this.var_135,null,this.var_2278);
         inputMode = const_565;
         this.var_1476 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1630;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_369)
         {
            if(var_369 is IDisposable)
            {
               IDisposable(var_369).dispose();
            }
         }
         if(var_561)
         {
            if(var_561 is IDisposable)
            {
               IDisposable(var_561).dispose();
            }
         }
         switch(value)
         {
            case const_565:
               var_369 = new MouseEventQueue(stage);
               var_561 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1470:
               var_369 = new TabletEventQueue(stage);
               var_561 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_565;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_185.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_185.removeChild(IGraphicContextHost(this.var_135).getGraphicContext(true) as DisplayObject);
            this.var_135.destroy();
            this.var_135 = null;
            this.var_1476.destroy();
            this.var_1476 = null;
            if(this.var_1219 is IDisposable)
            {
               IDisposable(this.var_1219).dispose();
            }
            this.var_1219 = null;
            this.var_1475.dispose();
            this.var_1475 = null;
            var_139 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1217;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1973;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1217 = param2;
         this.var_1973 = param1;
         if(this.var_2783)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1217 = null;
         this.var_1973 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1219;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1475;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2729;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_135;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1472 == null)
         {
            var_1472 = new MouseCursorControl(this.var_185);
         }
         return var_1472;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_135.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1579,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1476;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_135,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_135)
         {
            this.var_135 = null;
         }
         if(param1.state != WindowState.const_533)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_139.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_521 = true;
         if(this.var_1217)
         {
            throw this.var_1217;
         }
         var_561.process(this._eventProcessorState,var_369);
         this.var_521 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2279 = true;
         var_139.update(param1);
         this.var_2279 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_135 != null && !this.var_135.disposed)
         {
            if(this.var_185 is Stage)
            {
               this.var_135.width = Stage(this.var_185).stageWidth;
               this.var_135.height = Stage(this.var_185).stageHeight;
            }
            else
            {
               this.var_135.width = this.var_185.width;
               this.var_135.height = this.var_185.height;
            }
         }
      }
   }
}
