package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class BinaryFileLoader extends AssetLoaderEventBroker implements IAssetLoader
   {
       
      
      protected var var_974:String;
      
      protected var _type:String;
      
      protected var _data:String;
      
      protected var var_39:URLLoader;
      
      public function BinaryFileLoader(param1:String, param2:URLRequest = null)
      {
         super();
         this.var_974 = param2 == null ? "" : param2.url;
         this._type = param1;
         this.var_39 = new URLLoader();
         this.var_39.addEventListener(Event.COMPLETE,loadEventHandler);
         this.var_39.addEventListener(Event.UNLOAD,loadEventHandler);
         this.var_39.addEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
         this.var_39.addEventListener(ProgressEvent.PROGRESS,loadEventHandler);
         this.var_39.addEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
         this.var_39.addEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
         if(param2 != null)
         {
            this.load(param2);
         }
      }
      
      public function get url() : String
      {
         return this.var_974;
      }
      
      public function get ready() : Boolean
      {
         return this.bytesTotal > 0 ? this.bytesTotal == this.bytesLoaded : false;
      }
      
      public function get content() : Object
      {
         return !!this._data ? this._data : (!!this.var_39 ? this.var_39.data : null);
      }
      
      public function get mimeType() : String
      {
         return this._type;
      }
      
      public function get bytesLoaded() : uint
      {
         return !!this.var_39 ? uint(this.var_39.bytesLoaded) : uint(0);
      }
      
      public function get bytesTotal() : uint
      {
         return !!this.var_39 ? uint(this.var_39.bytesTotal) : uint(0);
      }
      
      public function load(param1:URLRequest) : void
      {
         this.var_974 = param1.url;
         this._data = null;
         var_308 = 0;
         this.var_39.dataFormat = this._type == "application/octet-stream" ? "null" : URLLoaderDataFormat.TEXT;
         this.var_39.load(param1);
      }
      
      override protected function retry() : Boolean
      {
         if(!_disposed)
         {
            if(++var_308 < var_2727)
            {
               try
               {
                  this.var_39.close();
               }
               catch(e:Error)
               {
               }
               this.var_39.load(new URLRequest(this.var_974 + (this.var_974.indexOf("?") == -1 ? "?" : "&") + "retry=" + var_308));
               return true;
            }
         }
         return false;
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            super.dispose();
            this.var_39.removeEventListener(Event.COMPLETE,loadEventHandler);
            this.var_39.removeEventListener(Event.UNLOAD,loadEventHandler);
            this.var_39.removeEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
            this.var_39.removeEventListener(ProgressEvent.PROGRESS,loadEventHandler);
            this.var_39.removeEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
            this.var_39.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
            try
            {
               this.var_39.close();
            }
            catch(e:Error)
            {
            }
            this.var_39 = null;
            this._type = null;
            this._data = null;
            this.var_974 = null;
         }
      }
      
      private function timerEventHandler(param1:TimerEvent) : void
      {
         var _loc2_:Timer = param1.target as Timer;
         if(_loc2_)
         {
            _loc2_.stop();
            _loc2_.removeEventListener(TimerEvent.TIMER,this.timerEventHandler);
         }
         if(!_disposed)
         {
            loadEventHandler(new Event(Event.COMPLETE));
         }
      }
   }
}
