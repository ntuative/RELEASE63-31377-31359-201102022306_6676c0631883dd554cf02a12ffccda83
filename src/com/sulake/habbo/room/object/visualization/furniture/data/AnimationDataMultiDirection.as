package com.sulake.habbo.room.object.visualization.furniture.data
{
   import com.sulake.core.utils.Map;
   
   public class AnimationDataMultiDirection extends AnimationData
   {
       
      
      private var var_247:Map = null;
      
      private var var_726:AnimationData = null;
      
      public function AnimationDataMultiDirection()
      {
         super();
         this.var_247 = new Map();
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         super.dispose();
         if(this.var_247 != null)
         {
            for each(_loc1_ in this.var_247)
            {
               if(_loc1_ != null)
               {
                  _loc1_.dispose();
               }
            }
            this.var_247.dispose();
            this.var_247 = null;
         }
      }
      
      override public function initialize(param1:XML) : Boolean
      {
         var _loc2_:AnimationData = new AnimationData();
         if(_loc2_.initialize(param1))
         {
            this.var_726 = _loc2_;
            return true;
         }
         return false;
      }
      
      override public function getFrame(param1:int, param2:int, param3:int) : AnimationFrame
      {
         var _loc4_:AnimationData = this.getDirection(param1);
         if(_loc4_ != null)
         {
            return _loc4_.getFrame(param1,param2,param3);
         }
         return null;
      }
      
      override public function getFrameFromSequence(param1:int, param2:int, param3:int, param4:int, param5:int) : AnimationFrame
      {
         var _loc6_:AnimationData = this.getDirection(param1);
         if(_loc6_ != null)
         {
            return _loc6_.getFrameFromSequence(param1,param2,param3,param4,param5);
         }
         return null;
      }
      
      private function getDirection(param1:int) : AnimationData
      {
         var _loc2_:AnimationData = this.var_247.getValue(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.var_726;
         }
         return _loc2_;
      }
   }
}
