package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1215:int = 2;
      
      private static const const_1216:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_303:Array;
      
      private var var_991:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_303 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1215)
         {
            this.var_303 = new Array();
            this.var_303.push(const_1216);
            this.var_991 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_991 > 0)
         {
            --this.var_991;
         }
         if(this.var_991 == 0)
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
