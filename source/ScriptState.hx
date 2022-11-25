import flixel.addons.display.FlxBackdrop;
import flixel.FlxState;
import flixel.FlxSprite;

class ScriptState extends FlxState {
        override public function new() {
                super();

                var bg:FlxSprite = new FlxSprite(0, 0).loadGraphic("assets/images/bg.png");
                bg.alpha = 0.5;
                add(bg);

                var shit:FlxBackdrop = new FlxBackdrop("assets/images/bgpattern.png");
                shit.alpha = 0.5;
                add(shit);
                shit.velocity.y = -50;
                shit.velocity.x = -150;
        }
}