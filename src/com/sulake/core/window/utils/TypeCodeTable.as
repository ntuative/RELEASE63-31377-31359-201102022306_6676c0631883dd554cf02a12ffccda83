package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_816;
         param1["bitmap"] = const_872;
         param1["border"] = const_845;
         param1["border_notify"] = const_1454;
         param1["button"] = const_417;
         param1["button_thick"] = const_805;
         param1["button_icon"] = const_1473;
         param1["button_group_left"] = const_828;
         param1["button_group_center"] = const_878;
         param1["button_group_right"] = const_604;
         param1["canvas"] = const_722;
         param1["checkbox"] = const_801;
         param1["closebutton"] = const_1037;
         param1["container"] = const_341;
         param1["container_button"] = const_779;
         param1["display_object_wrapper"] = const_784;
         param1["dropmenu"] = const_457;
         param1["dropmenu_item"] = const_518;
         param1["frame"] = const_392;
         param1["frame_notify"] = const_1375;
         param1["header"] = const_609;
         param1["html"] = const_1042;
         param1["icon"] = const_1096;
         param1["itemgrid"] = const_1201;
         param1["itemgrid_horizontal"] = const_558;
         param1["itemgrid_vertical"] = const_789;
         param1["itemlist"] = const_1168;
         param1["itemlist_horizontal"] = const_347;
         param1["itemlist_vertical"] = const_382;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1555;
         param1["menu"] = const_1504;
         param1["menu_item"] = const_1588;
         param1["submenu"] = const_1053;
         param1["minimizebox"] = const_1418;
         param1["notify"] = const_1590;
         param1["null"] = const_788;
         param1["password"] = const_679;
         param1["radiobutton"] = const_819;
         param1["region"] = const_660;
         param1["restorebox"] = const_1411;
         param1["scaler"] = const_727;
         param1["scaler_horizontal"] = const_1362;
         param1["scaler_vertical"] = const_1449;
         param1["scrollbar_horizontal"] = const_454;
         param1["scrollbar_vertical"] = const_704;
         param1["scrollbar_slider_button_up"] = const_1050;
         param1["scrollbar_slider_button_down"] = const_1056;
         param1["scrollbar_slider_button_left"] = const_1000;
         param1["scrollbar_slider_button_right"] = const_1121;
         param1["scrollbar_slider_bar_horizontal"] = const_1100;
         param1["scrollbar_slider_bar_vertical"] = const_1161;
         param1["scrollbar_slider_track_horizontal"] = const_980;
         param1["scrollbar_slider_track_vertical"] = const_995;
         param1["scrollable_itemlist"] = const_1628;
         param1["scrollable_itemlist_vertical"] = const_509;
         param1["scrollable_itemlist_horizontal"] = const_1205;
         param1["selector"] = const_631;
         param1["selector_list"] = const_697;
         param1["submenu"] = const_1053;
         param1["tab_button"] = const_531;
         param1["tab_container_button"] = const_1030;
         param1["tab_context"] = const_368;
         param1["tab_content"] = const_1099;
         param1["tab_selector"] = const_607;
         param1["text"] = const_429;
         param1["input"] = const_890;
         param1["toolbar"] = const_1576;
         param1["tooltip"] = const_373;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
