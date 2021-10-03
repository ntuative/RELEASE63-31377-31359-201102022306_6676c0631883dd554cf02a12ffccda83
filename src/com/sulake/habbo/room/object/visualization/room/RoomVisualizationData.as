package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_517:WallRasterizer;
      
      private var var_516:FloorRasterizer;
      
      private var var_770:WallAdRasterizer;
      
      private var var_518:LandscapeRasterizer;
      
      private var var_771:PlaneMaskManager;
      
      private var var_747:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_517 = new WallRasterizer();
         this.var_516 = new FloorRasterizer();
         this.var_770 = new WallAdRasterizer();
         this.var_518 = new LandscapeRasterizer();
         this.var_771 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_747;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_516;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_517;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_770;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_518;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_771;
      }
      
      public function dispose() : void
      {
         if(this.var_517 != null)
         {
            this.var_517.dispose();
            this.var_517 = null;
         }
         if(this.var_516 != null)
         {
            this.var_516.dispose();
            this.var_516 = null;
         }
         if(this.var_770 != null)
         {
            this.var_770.dispose();
            this.var_770 = null;
         }
         if(this.var_518 != null)
         {
            this.var_518.dispose();
            this.var_518 = null;
         }
         if(this.var_771 != null)
         {
            this.var_771.dispose();
            this.var_771 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_517 != null)
         {
            this.var_517.clearCache();
         }
         if(this.var_516 != null)
         {
            this.var_516.clearCache();
         }
         if(this.var_518 != null)
         {
            this.var_518.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_517.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_516.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_770.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_518.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_771.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_747)
         {
            return;
         }
         this.var_517.initializeAssetCollection(param1);
         this.var_516.initializeAssetCollection(param1);
         this.var_770.initializeAssetCollection(param1);
         this.var_518.initializeAssetCollection(param1);
         this.var_771.initializeAssetCollection(param1);
         this.var_747 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
