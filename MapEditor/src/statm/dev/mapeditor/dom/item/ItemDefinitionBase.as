package statm.dev.mapeditor.dom.item
{
	import statm.dev.mapeditor.io.IXMLSerializable;

	/**
	 * 物件定义。
	 * ItemFactory 类根据物件定义制造实际的地图元素。
	 * 在地图文件中，要保存此列表。
	 *
	 * @author statm
	 *
	 */
	public class ItemDefinitionBase implements IXMLSerializable
	{
		protected var _iconID : int;

		protected var _type : String;

		protected var _name : String;

		public function ItemDefinitionBase(iconID : int = 0, type : String = null, name : String = null) : void
		{
			_iconID = iconID;
			_type = type;
			_name = name;
		}

		public function get iconID() : int
		{
			return _iconID;
		}

		public function get type() : String
		{
			return _type;
		}

		public function get name() : String
		{
			return _name;
		}

		public function readXML(xml : XML) : void
		{
			_name = xml.@name;
			_type = xml.@type;
			_iconID = xml.@iconID;
		}

		public function toXML() : XML
		{
			return <itemDefinition type={_type} name={_name} iconID={_iconID}/>;
		}
	}
}
