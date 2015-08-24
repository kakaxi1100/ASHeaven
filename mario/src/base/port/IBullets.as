package base.port
{
	import flash.display.DisplayObjectContainer;

	public interface IBullets
	{
		function create(parent:DisplayObjectContainer, posx:Number, posy:Number):void;
	}
}