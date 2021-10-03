package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1554:int;
      
      private var var_2210:int;
      
      private var var_1055:int;
      
      private var var_453:Number;
      
      private var var_2208:Boolean;
      
      private var var_2209:int;
      
      private var var_1597:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2210 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2209 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2208 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1055;
         if(this.var_1055 == 1)
         {
            this.var_453 = param1;
            this.var_1554 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1055);
            this.var_453 = this.var_453 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2208 && param3 - this.var_1554 >= this.var_2210 && this.var_1597 < this.var_2209)
         {
            _loc5_ = 1000 / this.var_453;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1597;
            this.var_1554 = param3;
            this.var_1055 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
