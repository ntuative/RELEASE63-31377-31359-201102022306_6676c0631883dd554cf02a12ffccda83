package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_167;
         param1["bound_to_parent_rect"] = const_98;
         param1["child_window"] = const_1064;
         param1["embedded_controller"] = const_998;
         param1["resize_to_accommodate_children"] = const_70;
         param1["input_event_processor"] = const_29;
         param1["internal_event_handling"] = const_694;
         param1["mouse_dragging_target"] = const_253;
         param1["mouse_dragging_trigger"] = const_329;
         param1["mouse_scaling_target"] = const_318;
         param1["mouse_scaling_trigger"] = const_491;
         param1["horizontal_mouse_scaling_trigger"] = const_252;
         param1["vertical_mouse_scaling_trigger"] = const_264;
         param1["observe_parent_input_events"] = const_1155;
         param1["optimize_region_to_layout_size"] = const_458;
         param1["parent_window"] = const_1038;
         param1["relative_horizontal_scale_center"] = const_189;
         param1["relative_horizontal_scale_fixed"] = const_124;
         param1["relative_horizontal_scale_move"] = const_331;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1034;
         param1["relative_scale_fixed"] = const_699;
         param1["relative_scale_move"] = const_1178;
         param1["relative_scale_strech"] = const_1111;
         param1["relative_vertical_scale_center"] = const_194;
         param1["relative_vertical_scale_fixed"] = const_129;
         param1["relative_vertical_scale_move"] = const_388;
         param1["relative_vertical_scale_strech"] = const_343;
         param1["on_resize_align_left"] = const_763;
         param1["on_resize_align_right"] = const_569;
         param1["on_resize_align_center"] = const_446;
         param1["on_resize_align_top"] = const_669;
         param1["on_resize_align_bottom"] = const_522;
         param1["on_resize_align_middle"] = const_547;
         param1["on_accommodate_align_left"] = const_1091;
         param1["on_accommodate_align_right"] = const_469;
         param1["on_accommodate_align_center"] = const_840;
         param1["on_accommodate_align_top"] = const_1085;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_687;
         param1["route_input_events_to_parent"] = const_489;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1184;
         param1["scalable_with_mouse"] = const_1071;
         param1["reflect_horizontal_resize_to_parent"] = const_465;
         param1["reflect_vertical_resize_to_parent"] = const_567;
         param1["reflect_resize_to_parent"] = const_312;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
