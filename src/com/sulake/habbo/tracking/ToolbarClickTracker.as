package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1232:IHabboTracking;
      
      private var var_1676:Boolean = false;
      
      private var var_2114:int = 0;
      
      private var var_1539:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1232 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1232 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1676 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2114 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1676)
         {
            return;
         }
         ++this.var_1539;
         if(this.var_1539 <= this.var_2114)
         {
            this.var_1232.track("toolbar",param1);
         }
      }
   }
}
