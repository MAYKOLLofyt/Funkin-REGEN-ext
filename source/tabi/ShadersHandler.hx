package tabi;

import openfl.filters.ShaderFilter;

class ShadersHandler
{
	public static var chromaticAberration:ShaderFilter = new ShaderFilter(new ChromaticAberration());
	public static var brightShader:ShaderFilter = new ShaderFilter(new Bright());

	public static function setBrightness(brightness:Float):Void
	{
		brightShader.shader.data.brightness.value = [brightness];
	}
	
	public static function setContrast(contrast:Float):Void
	{
		brightShader.shader.data.contrast.value = [contrast];
	}
	
	public static function setChrome(chromeOffset:Float):Void
	{
		chromaticAberration.shader.data.rOffset.value = [chromeOffset];
		chromaticAberration.shader.data.gOffset.value = [0.0];
		chromaticAberration.shader.data.bOffset.value = [chromeOffset * -1];
	}
}