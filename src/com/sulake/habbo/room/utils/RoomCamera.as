package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_906:int = 3;
       
      
      private var var_2100:int = -1;
      
      private var var_2099:int = -2;
      
      private var var_319:Vector3d = null;
      
      private var var_386:Vector3d = null;
      
      private var var_2091:Boolean = false;
      
      private var var_2093:Boolean = false;
      
      private var var_2098:Boolean = false;
      
      private var var_2092:Boolean = false;
      
      private var var_2094:int = 0;
      
      private var var_2097:int = 0;
      
      private var var_2095:int = 0;
      
      private var var_2096:int = 0;
      
      private var var_1254:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_386;
      }
      
      public function get targetId() : int
      {
         return this.var_2100;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2099;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2091;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2093;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2098;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2092;
      }
      
      public function get screenWd() : int
      {
         return this.var_2094;
      }
      
      public function get screenHt() : int
      {
         return this.var_2097;
      }
      
      public function get roomWd() : int
      {
         return this.var_2095;
      }
      
      public function get roomHt() : int
      {
         return this.var_2096;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2100 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2099 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2091 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2093 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2098 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2092 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2094 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2097 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2095 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2096 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_319 == null)
         {
            this.var_319 = new Vector3d();
         }
         if(this.var_319.x != param1.x || this.var_319.y != param1.y || this.var_319.z != param1.z)
         {
            this.var_319.assign(param1);
            this.var_1254 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_319 = null;
         this.var_386 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_386 != null)
         {
            return;
         }
         this.var_386 = new Vector3d();
         this.var_386.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_319 != null && this.var_386 != null)
         {
            ++this.var_1254;
            _loc4_ = Vector3d.dif(this.var_319,this.var_386);
            if(_loc4_.length <= param2)
            {
               this.var_386 = this.var_319;
               this.var_319 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_906 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1254 <= const_906)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_386 = Vector3d.sum(this.var_386,_loc4_);
            }
         }
      }
   }
}
