package com.sulake.habbo.avatar.geometry
{
   public class Node3D
   {
       
      
      private var var_891:Vector3D;
      
      private var var_1682:Vector3D;
      
      private var var_2364:Boolean = false;
      
      public function Node3D(param1:Number, param2:Number, param3:Number)
      {
         this.var_1682 = new Vector3D();
         super();
         this.var_891 = new Vector3D(param1,param2,param3);
         if(param1 != 0 || param2 != 0 || param3 != 0)
         {
            this.var_2364 = true;
         }
      }
      
      public function get location() : Vector3D
      {
         return this.var_891;
      }
      
      public function get transformedLocation() : Vector3D
      {
         return this.var_1682;
      }
      
      public function applyTransform(param1:Matrix4x4) : void
      {
         if(this.var_2364)
         {
            this.var_1682 = param1.vectorMultiplication(this.var_891);
         }
      }
   }
}
