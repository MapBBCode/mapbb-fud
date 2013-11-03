# MapBBCode for FUDForum

This adds [map] and [mapid] to FUDForum 3.0.2 and newer. See the [FUDforum's wiki entry](http://cvs.prohost.org/index.php/Mapbbcode.plugin).

## Installation

Unzip `dist/mapbbcode_fud.zip` into `FUDforumData/plugins`. If you have FUDforum 3.0.2 (not newer), you would need to modify a script:

1. Open `FUDforumData/includes/compiler.inc`
2. Find the second line with `FINALIZE` (in uppercase) in it. 
3. Replace `array($file_data));` with `array($file_data, $dst));`

Then open the Plugin Manager, find "MapBBCode" and enable it. After then open the configuration panel and change some settings. When done, you would need to rebuild forum's themes ("Theme Manager", "Rebuild all Themes").

## Author and License

This plugin was written by Ilya Zverev and published under WTFPL license.
