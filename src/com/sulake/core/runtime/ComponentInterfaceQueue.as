package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1608:IID;
      
      private var var_713:Boolean;
      
      private var var_1060:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1608 = param1;
         this.var_1060 = new Array();
         this.var_713 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1608;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_713;
      }
      
      public function get receivers() : Array
      {
         return this.var_1060;
      }
      
      public function dispose() : void
      {
         if(!this.var_713)
         {
            this.var_713 = true;
            this.var_1608 = null;
            while(this.var_1060.length > 0)
            {
               this.var_1060.pop();
            }
            this.var_1060 = null;
         }
      }
   }
}
