**OpenFL ImageSaver extension**

This is a native extension for haxe NME which allows to save a BitmapData to the camera roll, in JPEG format.
(iOS and Android)

**Usage**

You can install it directly from haxelib:
	
	haxelib install imagesaver


If you didn't install this extension via haxelib and or to have the latest dev version you can download
this sources and set its folder as the source using the following command:
	
	haxelib dev imagesaver path/to/your/downloaded/files


Then reference the extension in your xml descriptor file:
	
	<haxelib name="imagesaver" />

In your project, just call this static Method to use it:
    
	ImageSaver.saveImage(bmd:BitmapData);

	Parameters:
	-----------
	bmd:nme.display.BitmapData - The desired BitmapData to be saved in the camera roll.

**Running the test application**

    cd sample
    lime build application.xml ios
	
	or 
    lime build application.xml android

**Recompiling the extension**

    lime rebuild imagesaver ios
	
	or
    lime rebuild imagesaver android

**License:**

This extension and example license:

    Unless indicated otherwise, this code was created by Emiliano Angelini and
    provided under a MIT-style license. 
    Copyright (c) Emiliano Angelini. All rights reserved.

    Permission is hereby granted, free of charge, to any person obtaining a 
    copy of this software and associated documentation files (the "Software"),
    to deal in the Software without restriction, including without limitation
    the rights to use, copy, modify, merge, publish, distribute, sublicense,
    and/or sell copies of the Software, and to permit persons to whom the
    Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
    THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.