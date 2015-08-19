package state
{
	import base.AbstractController;

	public interface IState
	{
		function get owner():AbstractController;
		function get name():String;
		function enter(o:Object):void;
		function exit(o:Object):void;
		function excute(o:Object):void;
	}
}