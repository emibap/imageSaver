#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif


#include <hx/CFFI.h>
#include "ImageSaver.h"

using namespace imagesaver;

#ifdef IPHONE


static void imagesaver_save_image (value img, value w, value h) {
    buffer imgBuf = val_to_buffer(img);
    
    unsigned char *img_str = (unsigned char *)buffer_data(imgBuf);
    
	saveImage(img_str, val_int(w), val_int(h)); 
	
}

DEFINE_PRIM (imagesaver_save_image, 3);


#endif

extern "C" void imagesaver_main () {
	
	val_int(0); // Fix Neko init
	
}
DEFINE_ENTRY_POINT (imagesaver_main);


extern "C" int imagesaver_register_prims () { return 0; }