package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_84:String = "i";
      
      public static const const_88:String = "s";
      
      public static const const_257:String = "e";
       
      
      private var var_1874:String;
      
      private var var_2675:int;
      
      private var var_1442:String;
      
      private var var_1441:int;
      
      private var var_1877:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1874 = param1.readString();
         this.var_2675 = param1.readInteger();
         this.var_1442 = param1.readString();
         this.var_1441 = param1.readInteger();
         this.var_1877 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1874;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2675;
      }
      
      public function get extraParam() : String
      {
         return this.var_1442;
      }
      
      public function get productCount() : int
      {
         return this.var_1441;
      }
      
      public function get expiration() : int
      {
         return this.var_1877;
      }
   }
}
