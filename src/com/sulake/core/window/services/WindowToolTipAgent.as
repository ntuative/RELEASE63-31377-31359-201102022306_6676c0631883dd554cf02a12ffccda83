package com.sulake.core.window.services
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IToolTipAgentService
   {
       
      
      protected var var_1222:String;
      
      protected var var_267:IToolTipWindow;
      
      protected var var_370:Timer;
      
      protected var var_1220:Point;
      
      protected var var_1221:Point;
      
      protected var var_1477:uint;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         this.var_1221 = new Point();
         this.var_1220 = new Point(20,20);
         this.var_1477 = 500;
         super(param1);
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               this.var_1222 = IInteractiveWindow(param1).toolTipCaption;
               this.var_1477 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               this.var_1222 = param1.caption;
               this.var_1477 = 500;
            }
            _mouse.x = var_136.mouseX;
            _mouse.y = var_136.mouseY;
            getMousePositionRelativeTo(param1,_mouse,this.var_1221);
            if(this.var_1222 != null && this.var_1222 != "")
            {
               if(this.var_370 == null)
               {
                  this.var_370 = new Timer(this.var_1477,1);
                  this.var_370.addEventListener(TimerEvent.TIMER,this.showToolTip);
               }
               this.var_370.reset();
               this.var_370.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(this.var_370 != null)
         {
            this.var_370.stop();
            this.var_370.removeEventListener(TimerEvent.TIMER,this.showToolTip);
            this.var_370 = null;
         }
         this.hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,this.var_1221);
            if(this.var_267 != null && !this.var_267.disposed)
            {
               this.var_267.x = param1 + this.var_1220.x;
               this.var_267.y = param2 + this.var_1220.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_370 != null)
         {
            this.var_370.reset();
         }
         if(_window && true)
         {
            if(this.var_267 == null || this.var_267.disposed)
            {
               this.var_267 = _window.context.create("undefined::ToolTip",this.var_1222,WindowType.const_373,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            this.var_267.x = _loc2_.x + this.var_1221.x + this.var_1220.x;
            this.var_267.y = _loc2_.y + this.var_1221.y + this.var_1220.y;
         }
      }
      
      protected function hideToolTip() : void
      {
         if(this.var_267 != null && !this.var_267.disposed)
         {
            this.var_267.destroy();
            this.var_267 = null;
         }
      }
   }
}
