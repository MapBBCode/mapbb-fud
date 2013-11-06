# MapBBCode for FUDForum

This adds [map] and [mapid] to FUDForum 3.0.2 and newer. See the [FUDforum's wiki entry](http://cvs.prohost.org/index.php/Mapbbcode.plugin).

## Installation

1.  Unzip `dist/mapbbcode_fud.zip` into `{$DATA_DIR}/plugins`. 

1.1 (Only version <= 3.0.2) If you have FUDforum 3.0.2 and older, you need to modify the `{$DATA_DIR}/include/compiler.inc` script:
  Find and replace line 
  `list($file_data) = plugin_call_hook('COMPILER_FINALIZE_PAGE', array($file_data));` 
   with 
  `list($file_data) = plugin_call_hook('COMPILER_FINALIZE_PAGE', array($file_data,$dst));`



2.  Open the Plugin Manager in the admin panel, find "MapBBCode" and enable it. Then open the plugin configuration page and arrange settings. 
3.  Finally rebuild forum's themes ("Admin panel" -> "Theme Manager" -> "Rebuild all Themes").

## Author and License

This plugin was written by Ilya Zverev and published under WTFPL license.
