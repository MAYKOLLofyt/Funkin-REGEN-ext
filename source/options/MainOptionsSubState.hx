package options;

import flixel.FlxG;

class MainOptionsSubState extends OptionsSubState
{
	public function new(parent:OptionsState)
	{
		super(parent, ['Appearance', 'Gameplay', 'About', 'Exit']);
	}

	override function onSelect(value:String = "", number:Int = 0)
	{
		switch (value.toLowerCase())
		{
			case 'appearance':
				FlxG.state.closeSubState();
				FlxG.state.openSubState(new AppearanceOptionsSubState(parent));
			case 'gameplay':
				FlxG.state.closeSubState();
				FlxG.state.openSubState(new GameplayOptionsSubstate(parent));
			case 'about':
				FlxG.switchState(new AboutState());
			case 'Exit':
				FlxG.switchState(new MainMenuState());
		}
	}

	override function onBack()
	{
		parent.onBack();
	}
}
