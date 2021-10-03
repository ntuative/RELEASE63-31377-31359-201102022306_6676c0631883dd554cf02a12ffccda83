package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_940:int = 10;
      
      private static const const_598:int = 20;
      
      private static const const_1320:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_303:Array;
      
      private var var_752:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_303 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_752)
            {
               this.var_752 = true;
               this.var_303 = new Array();
               this.var_303.push(const_1320);
               this.var_303.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_940)
         {
            if(this.var_752)
            {
               this.var_752 = false;
               this.var_303 = new Array();
               this.var_303.push(const_940 + param1);
               this.var_303.push(const_598 + param1);
               this.var_303.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_303.length > 0)
            {
               super.setAnimation(this.var_303.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
