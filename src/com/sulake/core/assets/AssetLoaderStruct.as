package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_857:IAssetLoader;
      
      private var var_1872:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1872 = param1;
         this.var_857 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1872;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_857;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_857 != null)
            {
               if(!this.var_857.disposed)
               {
                  this.var_857.dispose();
                  this.var_857 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
