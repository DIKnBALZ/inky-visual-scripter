import flixel.addons.display.FlxBackdrop;
import flixel.addons.ui.FlxUIButton;
import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;

class MainMenuState extends FlxState {
        override public function new() {
                var bg:FlxSprite = new FlxSprite(0, 0).loadGraphic("assets/images/bg");
                add(bg);

                var shit:FlxBackdrop = new FlxBackdrop("assets/images/bgpattern");
                add(shit);
                shit.velocity.y = -50;
                shit.velocity.x = -150;

                var text:FlxText = new FlxText(0, FlxG.height * 0.35, 0, "Load or Create a script?", 50);
                text.font = Paths.font("vcr");
                text.screenCenter(FlxAxes.X);
                add(text);

                add(new FlxUIButton(FlxG.width * 0.68, FlxG.height * 0.5, "Load", load));
                add(new FlxUIButton(FlxG.width * 0.25, FlxG.height * 0.5, "Create", createscript));
        }

        function load() {
                trace("kys");
        }

        function createscript() {
                FlxG.switchState(new ModState("ScriptState"));
        }
}