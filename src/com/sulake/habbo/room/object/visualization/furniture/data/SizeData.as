package com.sulake.habbo.room.object.visualization.furniture.data
{
   import com.sulake.core.utils.Map;
   import com.sulake.room.utils.XMLValidator;
   
   public class SizeData
   {
      
      public static const const_383:int = 1000;
      
      public static const const_1391:int = 0;
       
      
      private var var_606:int = 0;
      
      private var var_1368:int = 360;
      
      private var var_726:DirectionData = null;
      
      private var var_247:Map;
      
      private var _colors:Map;
      
      private var var_1118:DirectionData = null;
      
      private var var_1752:int = -1;
      
      public function SizeData(param1:int, param2:int)
      {
         super();
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > const_383)
         {
            param1 = const_383;
         }
         this.var_606 = param1;
         if(param2 < 1)
         {
            param2 = 1;
         }
         if(param2 > 360)
         {
            param2 = 360;
         }
         this.var_1368 = param2;
         this.var_726 = new DirectionData(param1);
         this.var_247 = new Map();
         this._colors = new Map();
      }
      
      public function dispose() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this.var_726 != null)
         {
            this.var_726.dispose();
            this.var_726 = null;
         }
         var _loc1_:int = 0;
         if(this.var_247 != null)
         {
            _loc2_ = null;
            _loc1_ = 0;
            while(_loc1_ < this.var_247.length)
            {
               _loc2_ = this.var_247.getWithIndex(_loc1_) as DirectionData;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            this.var_247.dispose();
            this.var_247 = null;
         }
         this.var_1118 = null;
         if(this._colors != null)
         {
            _loc3_ = null;
            _loc1_ = 0;
            while(_loc1_ < this._colors.length)
            {
               _loc3_ = this._colors.getWithIndex(_loc1_) as ColorData;
               if(_loc3_ != null)
               {
                  _loc3_.dispose();
               }
               _loc1_++;
            }
            this._colors.dispose();
            this._colors = null;
         }
      }
      
      public function get layerCount() : int
      {
         return this.var_606;
      }
      
      public function defineLayers(param1:XML) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var _loc3_:XMLList = param1.layer;
         return this.defineDirection(this.var_726,_loc3_);
      }
      
      public function defineDirections(param1:XML) : Boolean
      {
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:* = ["id"];
         var _loc3_:* = null;
         var _loc4_:XMLList = param1.direction;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length())
         {
            _loc6_ = _loc4_[_loc5_];
            if(!XMLValidator.checkRequiredAttributes(_loc6_,_loc2_))
            {
               return false;
            }
            _loc7_ = int(_loc6_.@id);
            _loc8_ = _loc6_.layer;
            if(this.var_247.getValue(String(_loc7_)) != null)
            {
               return false;
            }
            _loc3_ = new DirectionData(this.layerCount);
            _loc3_.copyValues(this.var_726);
            this.defineDirection(_loc3_,_loc8_);
            this.var_247.add(String(_loc7_),_loc3_);
            this.var_1752 = -1;
            this.var_1118 = null;
            _loc5_++;
         }
         return true;
      }
      
      private function defineDirection(param1:DirectionData, param2:XMLList) : Boolean
      {
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         if(param1 == null || param2 == null)
         {
            return false;
         }
         var _loc3_:* = ["id"];
         var _loc4_:* = null;
         var _loc5_:int = 0;
         for(; _loc5_ < param2.length(); _loc4_ = _loc6_.@alpha,if(_loc4_.length() == 1)
         {
            param1.setAlpha(_loc7_,int(_loc4_));
         },_loc4_ = _loc6_.@ignoreMouse,if(_loc4_.length() == 1)
         {
            param1.setIgnoreMouse(_loc7_,int(_loc4_) != 0);
         },_loc4_ = _loc6_.@x,if(_loc4_.length() == 1)
         {
            param1.setXOffset(_loc7_,int(_loc4_));
         },_loc4_ = _loc6_.@y,if(_loc4_.length() == 1)
         {
            param1.setYOffset(_loc7_,int(_loc4_));
         },_loc4_ = _loc6_.@z,if(_loc4_.length() == 1)
         {
            param1.setZOffset(_loc7_,Number(_loc4_) / -1000);
         },_loc5_++)
         {
            _loc6_ = param2[_loc5_];
            if(!XMLValidator.checkRequiredAttributes(_loc6_,_loc3_))
            {
               return false;
            }
            _loc7_ = int(_loc6_.@id);
            if(_loc7_ < 0 || _loc7_ >= this.layerCount)
            {
               return false;
            }
            _loc4_ = _loc6_.@tag;
            if(_loc4_.length() == 1)
            {
               _loc8_ = _loc6_.@tag;
               param1.setTag(_loc7_,_loc8_);
            }
            _loc4_ = _loc6_.@ink;
            if(_loc4_.length() != 1)
            {
               continue;
            }
            switch(String(_loc4_))
            {
               case "ADD":
                  param1.setInk(_loc7_,LayerData.const_981);
                  break;
               case "SUBTRACT":
                  param1.setInk(_loc7_,LayerData.const_1177);
                  break;
               case "DARKEN":
                  param1.setInk(_loc7_,LayerData.INK_DARKEN);
                  break;
            }
         }
         return true;
      }
      
      public function defineColors(param1:XML) : Boolean
      {
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         if(param1 == null)
         {
            return true;
         }
         var _loc2_:* = null;
         var _loc4_:* = ["id"];
         var _loc5_:* = ["id","color"];
         var _loc6_:XMLList = param1.color;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_.length())
         {
            _loc8_ = _loc6_[_loc7_];
            if(!XMLValidator.checkRequiredAttributes(_loc8_,_loc4_))
            {
               return false;
            }
            _loc9_ = _loc8_.@id;
            if(this._colors.getValue(_loc9_) != null)
            {
               return false;
            }
            _loc2_ = new ColorData(this.layerCount);
            _loc10_ = _loc8_.colorLayer;
            _loc11_ = 0;
            while(_loc11_ < _loc10_.length())
            {
               _loc12_ = _loc10_[_loc11_];
               if(!XMLValidator.checkRequiredAttributes(_loc12_,_loc5_))
               {
                  _loc2_.dispose();
                  return false;
               }
               _loc13_ = int(_loc12_.@id);
               _loc14_ = parseInt(_loc12_.@color,16);
               _loc2_.setColor(_loc14_,_loc13_);
               _loc11_++;
            }
            if(_loc2_ != null)
            {
               this._colors.add(_loc9_,_loc2_);
            }
            _loc7_++;
         }
         return true;
      }
      
      public function getDirectionValue(param1:int) : int
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = (param1 % 360 + 360 + this.var_1368 / 2) % 360 / this.var_1368;
         if(this.var_247.getValue(String(_loc2_)) != null)
         {
            return _loc2_;
         }
         _loc2_ = (param1 % 360 + 360) % 360;
         var _loc3_:int = -1;
         var _loc4_:int = -1;
         var _loc5_:int = 0;
         while(_loc5_ < this.var_247.length)
         {
            _loc6_ = int(this.var_247.getKey(_loc5_)) * this.var_1368;
            _loc7_ = (_loc6_ - _loc2_ + 360) % 360;
            if(_loc7_ > 180)
            {
               _loc7_ = 360 - _loc7_;
            }
            if(_loc7_ < _loc3_ || _loc3_ < 0)
            {
               _loc3_ = _loc7_;
               _loc4_ = _loc5_;
            }
            _loc5_++;
         }
         if(_loc4_ >= 0)
         {
            return int(this.var_247.getKey(_loc4_));
         }
         return const_1391;
      }
      
      private function getDirectionData(param1:int) : DirectionData
      {
         if(param1 == this.var_1752)
         {
            return this.var_1118;
         }
         var _loc2_:* = null;
         _loc2_ = this.var_247.getValue(String(param1)) as DirectionData;
         if(_loc2_ == null)
         {
            _loc2_ = this.var_726;
         }
         this.var_1752 = param1;
         this.var_1118 = _loc2_;
         return this.var_1118;
      }
      
      public function getTag(param1:int, param2:int) : String
      {
         var _loc3_:* = null;
         _loc3_ = this.getDirectionData(param1);
         if(_loc3_ != null)
         {
            return _loc3_.getTag(param2);
         }
         return LayerData.const_750;
      }
      
      public function getInk(param1:int, param2:int) : int
      {
         var _loc3_:* = null;
         _loc3_ = this.getDirectionData(param1);
         if(_loc3_ != null)
         {
            return _loc3_.getInk(param2);
         }
         return LayerData.const_537;
      }
      
      public function getAlpha(param1:int, param2:int) : int
      {
         var _loc3_:* = null;
         _loc3_ = this.getDirectionData(param1);
         if(_loc3_ != null)
         {
            return _loc3_.getAlpha(param2);
         }
         return LayerData.const_473;
      }
      
      public function getColor(param1:int, param2:int) : uint
      {
         var _loc3_:ColorData = this._colors.getValue(String(param2)) as ColorData;
         if(_loc3_ != null)
         {
            return _loc3_.getColor(param1);
         }
         return ColorData.const_74;
      }
      
      public function getIgnoreMouse(param1:int, param2:int) : Boolean
      {
         var _loc3_:* = null;
         _loc3_ = this.getDirectionData(param1);
         if(_loc3_ != null)
         {
            return _loc3_.getIgnoreMouse(param2);
         }
         return LayerData.const_842;
      }
      
      public function getXOffset(param1:int, param2:int) : int
      {
         var _loc3_:* = null;
         _loc3_ = this.getDirectionData(param1);
         if(_loc3_ != null)
         {
            return _loc3_.getXOffset(param2);
         }
         return LayerData.const_560;
      }
      
      public function getYOffset(param1:int, param2:int) : int
      {
         var _loc3_:* = null;
         _loc3_ = this.getDirectionData(param1);
         if(_loc3_ != null)
         {
            return _loc3_.getYOffset(param2);
         }
         return LayerData.const_496;
      }
      
      public function getZOffset(param1:int, param2:int) : Number
      {
         var _loc3_:* = null;
         _loc3_ = this.getDirectionData(param1);
         if(_loc3_ != null)
         {
            return _loc3_.getZOffset(param2);
         }
         return LayerData.const_513;
      }
   }
}
