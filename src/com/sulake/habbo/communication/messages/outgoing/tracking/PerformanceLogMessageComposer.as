package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2315:int = 0;
      
      private var var_1275:String = "";
      
      private var var_1553:String = "";
      
      private var var_2143:String = "";
      
      private var var_2313:String = "";
      
      private var var_1644:int = 0;
      
      private var var_2314:int = 0;
      
      private var var_2316:int = 0;
      
      private var var_1272:int = 0;
      
      private var var_2317:int = 0;
      
      private var var_1274:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2315 = param1;
         this.var_1275 = param2;
         this.var_1553 = param3;
         this.var_2143 = param4;
         this.var_2313 = param5;
         if(param6)
         {
            this.var_1644 = 1;
         }
         else
         {
            this.var_1644 = 0;
         }
         this.var_2314 = param7;
         this.var_2316 = param8;
         this.var_1272 = param9;
         this.var_2317 = param10;
         this.var_1274 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2315,this.var_1275,this.var_1553,this.var_2143,this.var_2313,this.var_1644,this.var_2314,this.var_2316,this.var_1272,this.var_2317,this.var_1274];
      }
   }
}
