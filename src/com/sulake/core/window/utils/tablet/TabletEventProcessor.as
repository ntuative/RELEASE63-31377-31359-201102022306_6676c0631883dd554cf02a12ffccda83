package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2790:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_135 = param1.desktop;
         var_79 = param1.var_1207 as WindowController;
         _lastClickTarget = param1.var_1206 as WindowController;
         var_139 = param1.renderer;
         var_787 = param1.var_1208;
         param2.begin();
         param2.end();
         param1.desktop = var_135;
         param1.var_1207 = var_79;
         param1.var_1206 = _lastClickTarget;
         param1.renderer = var_139;
         param1.var_1208 = var_787;
      }
   }
}
