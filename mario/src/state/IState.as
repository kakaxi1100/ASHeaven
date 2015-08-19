package state
{
	public interface IState
	{
		function get owner():Object;
		function get name():String;
		function enter(o:Object):void;
		function exit(o:Object):void;
		function excute(o:Object):void;
	}
}