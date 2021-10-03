package com.sulake.habbo.ui
{
   import com.sulake.habbo.session.events.RoomSessionPetPackageEvent;
   import com.sulake.habbo.widget.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetPetPackageUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetOpenPetPackageMessage;
   import flash.events.Event;
   
   public class PetPackageFurniWidgetHandler implements IRoomWidgetHandler
   {
       
      
      private var var_713:Boolean = false;
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      public function PetPackageFurniWidgetHandler()
      {
         super();
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_544;
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         this._container = param1;
      }
      
      public function getWidgetMessages() : Array
      {
         return [RoomWidgetOpenPetPackageMessage.const_778];
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         var _loc2_:* = null;
         switch(param1.type)
         {
            case RoomWidgetOpenPetPackageMessage.const_778:
               _loc2_ = param1 as RoomWidgetOpenPetPackageMessage;
               if(this._container != null && this._container.roomSession != null)
               {
                  this._container.roomSession.sendOpenPetPackageMessage(_loc2_.objectId,_loc2_.name);
               }
         }
         return null;
      }
      
      public function getProcessedEvents() : Array
      {
         return [RoomSessionPetPackageEvent.const_477,RoomSessionPetPackageEvent.const_428];
      }
      
      public function processEvent(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         if(param1 == null)
         {
            return;
         }
         if(this._container != null && this._container.events != null && param1 != null)
         {
            switch(param1.type)
            {
               case RoomSessionPetPackageEvent.const_477:
                  _loc2_ = param1 as RoomSessionPetPackageEvent;
                  _loc3_ = _loc2_.objectId;
                  _loc5_ = _loc2_.figure;
                  _loc4_ = new RoomWidgetPetPackageUpdateEvent(RoomWidgetPetPackageUpdateEvent.const_421,_loc3_,_loc5_,-1);
                  this._container.events.dispatchEvent(_loc4_);
                  break;
               case RoomSessionPetPackageEvent.const_428:
                  _loc2_ = param1 as RoomSessionPetPackageEvent;
                  _loc3_ = _loc2_.objectId;
                  _loc6_ = _loc2_.nameValidationStatus;
                  _loc4_ = new RoomWidgetPetPackageUpdateEvent(RoomWidgetPetPackageUpdateEvent.const_564,_loc3_,"",_loc6_);
                  this._container.events.dispatchEvent(_loc4_);
            }
         }
      }
      
      public function update() : void
      {
      }
      
      public function dispose() : void
      {
         this.var_713 = true;
         this._container = null;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_713;
      }
   }
}
