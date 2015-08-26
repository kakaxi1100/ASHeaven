package base.port
{
	import flash.display.DisplayObjectContainer;

	public interface IBullets
	{
		function initData(angle:Number, speed:int):void;
		function create(parent:DisplayObjectContainer, posx:Number, posy:Number):void;
	}
}