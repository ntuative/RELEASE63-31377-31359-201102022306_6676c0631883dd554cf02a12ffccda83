package com.sulake.core.communication.protocol
{
   import flash.utils.ByteArray;
   
   public interface IProtocol
   {
       
      
      function dispose() : void;
      
      function get encoder() : IProtocolEncoder;
      
      function get method_9() : IProtocolDecoder;
      
      function getMessages(param1:ByteArray, param2:Array) : uint;
   }
}
