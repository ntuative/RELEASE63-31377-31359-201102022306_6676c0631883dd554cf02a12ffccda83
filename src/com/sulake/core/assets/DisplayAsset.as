package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_974:String;
      
      protected var var_167:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_789:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_789 = param1;
         this.var_974 = param2;
      }
      
      public function get url() : String
      {
         return this.var_974;
      }
      
      public function get content() : Object
      {
         return this.var_167;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_789;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_167.loaderInfo != null)
            {
               if(this.var_167.loaderInfo.loader != null)
               {
                  this.var_167.loaderInfo.loader.unload();
               }
            }
            this.var_167 = null;
            this.var_789 = null;
            this._disposed = true;
            this.var_974 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_167 = param1 as DisplayObject;
            if(this.var_167 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_167 = DisplayAsset(param1).var_167;
            this.var_789 = DisplayAsset(param1).var_789;
            if(this.var_167 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_167 = DisplayAsset(param1).var_167;
            this.var_789 = DisplayAsset(param1).var_789;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
