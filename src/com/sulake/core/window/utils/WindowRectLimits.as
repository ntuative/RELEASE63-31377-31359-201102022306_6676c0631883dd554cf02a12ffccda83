package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_279:int = -2.147483648E9;
      
      private var var_281:int = 2.147483647E9;
      
      private var var_280:int = -2.147483648E9;
      
      private var var_282:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_279;
      }
      
      public function get maxWidth() : int
      {
         return this.var_281;
      }
      
      public function get minHeight() : int
      {
         return this.var_280;
      }
      
      public function get maxHeight() : int
      {
         return this.var_282;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_279 = param1;
         if(this.var_279 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_279)
         {
            this._target.width = this.var_279;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_281 = param1;
         if(this.var_281 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_281)
         {
            this._target.width = this.var_281;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_280 = param1;
         if(this.var_280 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_280)
         {
            this._target.height = this.var_280;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_282 = param1;
         if(this.var_282 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_282)
         {
            this._target.height = this.var_282;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_279 == int.MIN_VALUE && this.var_281 == int.MAX_VALUE && this.var_280 == int.MIN_VALUE && this.var_282 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_279 = int.MIN_VALUE;
         this.var_281 = int.MAX_VALUE;
         this.var_280 = int.MIN_VALUE;
         this.var_282 = int.MAX_VALUE;
      }
      
      public function limit() : void
      {
         if(!this.isEmpty && this._target)
         {
            if(this._target.width < this.var_279)
            {
               this._target.width = this.var_279;
            }
            else if(this._target.width > this.var_281)
            {
               this._target.width = this.var_281;
            }
            if(this._target.height < this.var_280)
            {
               this._target.height = this.var_280;
            }
            else if(this._target.height > this.var_282)
            {
               this._target.height = this.var_282;
            }
         }
      }
      
      public function assign(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.var_279 = param1;
         this.var_281 = param2;
         this.var_280 = param3;
         this.var_282 = param4;
         this.limit();
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_279 = this.var_279;
         _loc2_.var_281 = this.var_281;
         _loc2_.var_280 = this.var_280;
         _loc2_.var_282 = this.var_282;
         return _loc2_;
      }
   }
}
