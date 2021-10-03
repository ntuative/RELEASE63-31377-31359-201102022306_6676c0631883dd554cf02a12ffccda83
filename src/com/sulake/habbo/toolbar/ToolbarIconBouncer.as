package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2449:Number;
      
      private var var_1699:Number;
      
      private var var_890:Number;
      
      private var var_891:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2449 = param1;
         this.var_1699 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_890 = param1;
         this.var_891 = 0;
      }
      
      public function update() : void
      {
         this.var_890 += this.var_1699;
         this.var_891 += this.var_890;
         if(this.var_891 > 0)
         {
            this.var_891 = 0;
            this.var_890 = this.var_2449 * -1 * this.var_890;
         }
      }
      
      public function get location() : Number
      {
         return this.var_891;
      }
   }
}
