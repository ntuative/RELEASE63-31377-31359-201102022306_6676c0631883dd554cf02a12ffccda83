package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1286:IID;
      
      private var var_1581:String;
      
      private var var_103:IUnknown;
      
      private var var_680:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1286 = param1;
         this.var_1581 = getQualifiedClassName(this.var_1286);
         this.var_103 = param2;
         this.var_680 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1286;
      }
      
      public function get iis() : String
      {
         return this.var_1581;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_103;
      }
      
      public function get references() : uint
      {
         return this.var_680;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_103 == null;
      }
      
      public function dispose() : void
      {
         this.var_1286 = null;
         this.var_1581 = null;
         this.var_103 = null;
         this.var_680 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_680;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_680) : uint(0);
      }
   }
}
