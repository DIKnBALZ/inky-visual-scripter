import flixel.addons.display.FlxBackdrop;
import flixel.FlxState;
import flixel.FlxSprite;

class ScriptState extends FlxState {
        override public function new() {
                var bg:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image("loading/bg"));
                bg.alpha = 0.5;
                add(bg);

                var shit:FlxBackdrop = new FlxBackdrop(Paths.image("loading/bgpattern"));
                shit.alpha = 0.5;
                add(shit);
                shit.velocity.y = -50;
                shit.velocity.x = -150;
        }
}