package com.sulake.habbo.help.register
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.habbo.communication.messages.outgoing.help.SendRegistrationDataComposer;
   import com.sulake.habbo.help.HabboHelp;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class RegistrationUI
   {
       
      
      private var var_177:HabboHelp;
      
      private var var_961:RegistrationView;
      
      public function RegistrationUI(param1:HabboHelp)
      {
         super();
         this.var_177 = param1;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this.var_177.windowManager;
      }
      
      public function get assets() : IAssetLibrary
      {
         return this.var_177.assets;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_177.localization;
      }
      
      public function get myName() : String
      {
         return this.var_177.ownUserName;
      }
      
      public function dispose() : void
      {
         this.var_177 = null;
         if(this.var_961)
         {
            this.var_961.dispose();
            this.var_961 = null;
         }
      }
      
      public function showRegistrationView() : void
      {
         if(!this.var_961)
         {
            this.var_961 = new RegistrationView(this);
         }
         this.var_961.showMainView();
      }
      
      public function sendRegistrationEmail(param1:String, param2:String, param3:Boolean) : void
      {
         this.var_177.sendMessage(new SendRegistrationDataComposer(param1,param2,param3));
      }
   }
}
