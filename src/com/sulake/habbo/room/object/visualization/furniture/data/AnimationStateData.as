package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationStateData
   {
       
      
      private var var_1815:int = -1;
      
      private var var_2565:int = 0;
      
      private var var_1661:Boolean = false;
      
      private var var_542:int = 0;
      
      private var _frames:Array;
      
      private var var_921:Array;
      
      private var var_920:Array;
      
      private var var_606:int = 0;
      
      public function AnimationStateData()
      {
         this._frames = [];
         this.var_921 = [];
         this.var_920 = [];
         super();
      }
      
      public function get animationOver() : Boolean
      {
         return this.var_1661;
      }
      
      public function set animationOver(param1:Boolean) : void
      {
         this.var_1661 = param1;
      }
      
      public function get frameCounter() : int
      {
         return this.var_542;
      }
      
      public function set frameCounter(param1:int) : void
      {
         this.var_542 = param1;
      }
      
      public function get animationId() : int
      {
         return this.var_1815;
      }
      
      public function set animationId(param1:int) : void
      {
         if(param1 != this.var_1815)
         {
            this.var_1815 = param1;
            this.resetAnimationFrames(false);
         }
      }
      
      public function get animationAfterTransitionId() : int
      {
         return this.var_2565;
      }
      
      public function set animationAfterTransitionId(param1:int) : void
      {
         this.var_2565 = param1;
      }
      
      public function dispose() : void
      {
         this._frames = null;
         this.var_921 = null;
         this.var_920 = null;
      }
      
      public function setLayerCount(param1:int) : void
      {
         this.var_606 = param1;
         this.resetAnimationFrames();
      }
      
      public function resetAnimationFrames(param1:Boolean = true) : void
      {
         var _loc3_:* = null;
         if(param1 || this._frames == null)
         {
            this._frames = [];
         }
         this.var_921 = [];
         this.var_920 = [];
         this.var_1661 = false;
         this.var_542 = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_606)
         {
            if(param1 || this._frames.length <= _loc2_)
            {
               this._frames[_loc2_] = null;
            }
            else
            {
               _loc3_ = this._frames[_loc2_];
               if(_loc3_ != null)
               {
                  this._frames[_loc2_] = new AnimationFrame(_loc3_.id,_loc3_.x,_loc3_.y,_loc3_.repeats,0,_loc3_.isLastFrame);
               }
            }
            this.var_921[_loc2_] = false;
            this.var_920[_loc2_] = false;
            _loc2_++;
         }
      }
      
      public function getFrame(param1:int) : AnimationFrame
      {
         if(param1 >= 0 && param1 < this.var_606)
         {
            return this._frames[param1];
         }
         return null;
      }
      
      public function setFrame(param1:int, param2:AnimationFrame) : void
      {
         if(param1 >= 0 && param1 < this.var_606)
         {
            this._frames[param1] = param2;
         }
      }
      
      public function getAnimationPlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_606)
         {
            return this.var_920[param1];
         }
         return true;
      }
      
      public function setAnimationPlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_606)
         {
            this.var_920[param1] = param2;
         }
      }
      
      public function getLastFramePlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_606)
         {
            return this.var_921[param1];
         }
         return true;
      }
      
      public function setLastFramePlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_606)
         {
            this.var_921[param1] = param2;
         }
      }
   }
}
