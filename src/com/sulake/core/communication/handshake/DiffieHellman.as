package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_925:BigInteger;
      
      private var var_2249:BigInteger;
      
      private var var_1620:BigInteger;
      
      private var var_2250:BigInteger;
      
      private var var_1307:BigInteger;
      
      private var var_1621:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1307 = param1;
         this.var_1621 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1307.toString() + ",generator: " + this.var_1621.toString() + ",secret: " + param1);
         this.var_925 = new BigInteger();
         this.var_925.fromRadix(param1,param2);
         this.var_2249 = this.var_1621.modPow(this.var_925,this.var_1307);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1620 = new BigInteger();
         this.var_1620.fromRadix(param1,param2);
         this.var_2250 = this.var_1620.modPow(this.var_925,this.var_1307);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2249.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2250.toRadix(param1);
      }
   }
}
