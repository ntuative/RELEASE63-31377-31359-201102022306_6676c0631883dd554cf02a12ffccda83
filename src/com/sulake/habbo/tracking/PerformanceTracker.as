package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_182:IHabboConfigurationManager = null;
      
      private var var_530:int = 0;
      
      private var var_453:Number = 0;
      
      private var var_2747:Array;
      
      private var var_1275:String = "";
      
      private var var_1553:String = "";
      
      private var var_2143:String = "";
      
      private var var_2313:String = "";
      
      private var var_1644:Boolean = false;
      
      private var var_1552:GarbageMonitor = null;
      
      private var var_1272:int = 0;
      
      private var var_2142:Boolean;
      
      private var var_1555:int = 1000;
      
      private var var_1274:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1554:int = 0;
      
      private var var_1551:int = 10;
      
      private var var_1273:int = 0;
      
      private var var_2145:Number = 0.15;
      
      private var var_2141:Boolean = true;
      
      private var var_2144:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2747 = [];
         super();
         this.var_1553 = Capabilities.version;
         this.var_2143 = Capabilities.os;
         this.var_1644 = Capabilities.isDebugger;
         this.var_1275 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1275 == null)
         {
            this.var_1275 = "unknown";
         }
         this.var_1552 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1554 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1553;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_453;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1555 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1551 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_182 = param1;
         this._reportInterval = int(this.var_182.getKey("performancetest.interval","60"));
         this.var_1555 = int(this.var_182.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1551 = int(this.var_182.getKey("performancetest.reportlimit","10"));
         this.var_2145 = Number(this.var_182.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2141 = Boolean(int(this.var_182.getKey("performancetest.distribution.enabled","1")));
         this.var_2142 = Boolean(this.var_182.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1552.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1552.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         if(this.var_2142)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1272;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1555)
         {
            ++this.var_1274;
            _loc3_ = true;
         }
         else
         {
            ++this.var_530;
            if(this.var_530 <= 1)
            {
               this.var_453 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_530);
               this.var_453 = this.var_453 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1554 > this._reportInterval * 1000 && this.var_1273 < this.var_1551)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_453);
            _loc6_ = true;
            if(this.var_2141 && this.var_1273 > 0)
            {
               _loc7_ = this.differenceInPercents(this.var_2144,this.var_453);
               if(_loc7_ < this.var_2145)
               {
                  _loc6_ = false;
               }
            }
            this.var_1554 = param2;
            if(_loc6_ || _loc3_)
            {
               this.var_2144 = this.var_453;
               if(this.sendReport(param2))
               {
                  ++this.var_1273;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1275,this.var_1553,this.var_2143,this.var_2313,this.var_1644,_loc5_,_loc4_,this.var_1272,this.var_453,this.var_1274);
            this._connection.send(_loc2_);
            this.var_1272 = 0;
            this.var_453 = 0;
            this.var_530 = 0;
            this.var_1274 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
