package;

#if cpp
import cpp.Lib;
import haxe.io.Bytes;
#elseif neko
import neko.Lib;
#end

#if (android && openfl)
import openfl.utils.JNI;
#end

import flash.utils.ByteArray;
import flash.display.BitmapData;
import flash.geom.Rectangle;

class ImageSaver {
	
	public static function saveImage(bmd:BitmapData):Void {
		#if ios

		var ba:ByteArray = bmd.getPixels(new Rectangle(0, 0, bmd.width, bmd.height));
		cpp_call_save_image(ba.getData(), Std.int(bmd.width), Std.int(bmd.height));
		
		#elseif android
		
		if (jni_call_save_image == null) jni_call_save_image = JNI.createStaticMethod ("org.haxe.extension.ImageSaver", "saveImage", "(Ljava/lang/String;)V");
		jni_call_save_image(getB64PngData(bmd));
		
		#end	
	}
	
	#if ios
	private static var cpp_call_save_image = Lib.load ("imagesaver", "imagesaver_save_image", 3);
	#end
	
	
	#if (android && openfl)
	
	private static inline var BASE_64_ENCODINGS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
	private static inline var BASE_64_PADDING = "=";
	static inline function getB64PngData(bmp:BitmapData):String{

		var b:ByteArray = bmp.encode("png");

		var base64:String = new haxe.crypto.BaseCode(Bytes.ofString(BASE_64_ENCODINGS)).encodeBytes(b).toString();

		var remainder = base64.length % 4;

		if (remainder > 1) {
			base64 += BASE_64_PADDING;
		}
		if (remainder == 2) {
			base64 += BASE_64_PADDING;
		}

		return base64;
	}
	
	private static var jni_call_save_image:Dynamic;
	
	#end
	
	
}