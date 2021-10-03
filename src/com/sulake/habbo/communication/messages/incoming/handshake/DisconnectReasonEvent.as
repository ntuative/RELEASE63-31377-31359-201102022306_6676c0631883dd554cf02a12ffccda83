package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1771:int = 0;
      
      public static const const_1404:int = 1;
      
      public static const const_1498:int = 2;
      
      public static const const_1794:int = 3;
      
      public static const const_1880:int = 4;
      
      public static const const_1834:int = 5;
      
      public static const const_1612:int = 10;
      
      public static const const_1845:int = 11;
      
      public static const const_1721:int = 12;
      
      public static const const_1851:int = 13;
      
      public static const const_1906:int = 16;
      
      public static const const_1915:int = 17;
      
      public static const const_1875:int = 18;
      
      public static const const_1924:int = 19;
      
      public static const const_1814:int = 20;
      
      public static const const_1786:int = 22;
      
      public static const const_1805:int = 23;
      
      public static const const_1917:int = 24;
      
      public static const const_1846:int = 25;
      
      public static const const_1926:int = 26;
      
      public static const const_1932:int = 27;
      
      public static const const_1864:int = 28;
      
      public static const const_1810:int = 29;
      
      public static const const_1918:int = 100;
      
      public static const const_1716:int = 101;
      
      public static const const_1758:int = 102;
      
      public static const const_1722:int = 103;
      
      public static const const_1816:int = 104;
      
      public static const const_1844:int = 105;
      
      public static const const_1742:int = 106;
      
      public static const const_1920:int = 107;
      
      public static const const_1922:int = 108;
      
      public static const const_1832:int = 109;
      
      public static const const_1871:int = 110;
      
      public static const const_1792:int = 111;
      
      public static const const_1724:int = 112;
      
      public static const const_1743:int = 113;
      
      public static const const_1836:int = 114;
      
      public static const const_1739:int = 115;
      
      public static const const_1874:int = 116;
      
      public static const const_1748:int = 117;
      
      public static const const_1812:int = 118;
      
      public static const const_1715:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get method_1() : int
      {
         return (this.var_10 as DisconnectReasonParser).method_1;
      }
      
      public function get reasonString() : String
      {
         switch(this.method_1)
         {
            case const_1404:
            case const_1612:
               return "banned";
            case const_1498:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
