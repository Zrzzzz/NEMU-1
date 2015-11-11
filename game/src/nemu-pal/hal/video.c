#include "hal.h"
#include "device/video.h"
#include "device/palette.h"

#include <string.h>
#include <stdlib.h>

int get_fps();

void SDL_BlitSurface(SDL_Surface *src, SDL_Rect *srcrect, 
		SDL_Surface *dst, SDL_Rect *dstrect) {
	assert(dst && src);

	/* TODO: Performs a fast blit from the source surface to the 
	 * destination surface. Only the position is used in the
	 * ``dstrect'' (the width and height are ignored). If either
	 * ``srcrect'' or ``dstrect'' are NULL, the entire surface 
	 * (``src'' or ``dst'') is copied. The final blit rectangle 
	 * is saved in ``dstrect'' after all clipping is performed
	 * (``srcrect'' is not modified).
	 */
	int src_x = (srcrect == NULL || dstrect == NULL)? 0 : srcrect->x;
	int src_y = (srcrect == NULL || dstrect == NULL)? 0 : srcrect->y;

	int src_w = (srcrect == NULL || dstrect == NULL)? src->w : srcrect->w;
	int src_h = (srcrect == NULL || dstrect == NULL)? src->h : srcrect->h;

	int dst_x = (srcrect && dstrect) ? dstrect->x : 0;
	int dst_y = (srcrect && dstrect) ? dstrect->y : 0;

	int pitch  = src->pitch;

	int src_line = src_y, src_row = src_x;
	int dst_line = dst_y, dst_row = dst_x;

	int src_line_bound = src_y + src_h -1;
	int src_row_bound = src_x + src_w -1;

	int dst_line_bound = dst_y + src_h -1;
	int dst_row_bound = dst_x + src_w -1;

	if(dstrect != NULL){
		dstrect->x = dst_row;
		dstrect->y = dst_line;
		dstrect->w = dst_row_bound - dst_row + 1;
		dstrect->h = dst_line_bound - dst_line + 1;

	}

	int temp_src_row = src_row;
	int temp_dst_row = dst_row;

	for(;src_line <= src_line_bound;src_line++,dst_line++){
		uint8_t* src_pixel = (uint8_t*) & (src->pixels[src_line * pitch + temp_src_row]);
		uint8_t* dst_pixel = (uint8_t*) & (dst->pixels[dst_line * pitch + temp_dst_row]);
		for(src_row = temp_src_row;src_row <= src_row_bound; src_row++,dst_pixel++,src_pixel++){
			*dst_pixel = *src_pixel;
		}
	}/*

	int i, w, h;
	uint8_t *src_ptr, *dst_ptr;

	if(srcrect) {
		w = srcrect->w;
		h = srcrect->h;
		src_ptr = src->pixels + srcrect->x + srcrect->y * src->w;
	}
	else {
		w = src->w;
		h = src->h;
		src_ptr = src->pixels;
	}

	if(dstrect) {
		dst_ptr = dst->pixels + dstrect->x + dstrect->y * dst->w;;
	}
	else {
		dst_ptr = dst->pixels;
	}

	for(i = 0; i < h; i ++) {
		memcpy(dst_ptr, src_ptr, w);
		dst_ptr += dst->w;
		src_ptr += src->w;
	}
*/}

void SDL_FillRect(SDL_Surface *dst, SDL_Rect *dstrect, uint32_t color) {
	assert(dst);
	assert(color <= 0xff);

	/* TODO: Fill the rectangle area described by ``dstrect''
	 * in surface ``dst'' with color ``color''. If dstrect is
	 * NULL, fill the whole surface.
	 */

	if(dstrect == NULL) {
		memset(dst->pixels, (uint8_t)color, dst->refcount);
	}
	else {
		int h = dstrect->h;
		int w = dstrect->w;
		int next = dst->w;
		uint8_t *dst_ptr = dst->pixels + dstrect->x + dstrect->y * dst->w;
		int i;
		for(i = 0; i < h; i ++) {
			memset(dst_ptr, (uint8_t)color, w);
			dst_ptr += next;
		}
	}
}

void SDL_UpdateRect(SDL_Surface *screen, int x, int y, int w, int h) {
	assert(screen);
	assert(screen->pitch == 320);
	if(screen->flags & SDL_HWSURFACE) {
		if(x == 0 && y == 0) {
			/* Draw FPS */
			vmem = VMEM_ADDR;
			char buf[80];
			sprintf(buf, "%dFPS", get_fps());
			draw_string(buf, 0, 0, 10);
		}
		return;
	}

	/* TODO: Copy the pixels in the rectangle area to the screen. */

	int i;
	uint8_t *dst = (void*)0xa0000 + x + y * 320;
	uint8_t *src = screen->pixels + x + y * screen->w;
	for(i = 0; i < h; i ++) {
		memcpy(dst, src, w);
		dst += 320;
		src += screen->w;
	}
}

void SDL_SetPalette(SDL_Surface *s, int flags, SDL_Color *colors, 
		int firstcolor, int ncolors) {
	assert(s);
	assert(s->format);
	assert(s->format->palette);
	assert(firstcolor == 0);

	if(s->format->palette->colors == NULL || s->format->palette->ncolors != ncolors) {
		if(s->format->palette->ncolors != ncolors && s->format->palette->colors != NULL) {
			/* If the size of the new palette is different 
			 * from the old one, free the old one.
			 */
			free(s->format->palette->colors);
		}

		/* Get new memory space to store the new palette. */
		s->format->palette->colors = malloc(sizeof(SDL_Color) * ncolors);
		assert(s->format->palette->colors);
	}

	/* Set the new palette. */
	s->format->palette->ncolors = ncolors;
	memcpy(s->format->palette->colors, colors, sizeof(SDL_Color) * ncolors);

	if(s->flags & SDL_HWSURFACE) {
		/* TODO: Set the VGA palette by calling write_palette(). */
		write_palette(colors, ncolors);
	}
}

/* ======== The following functions are already implemented. ======== */

void SDL_SoftStretch(SDL_Surface *src, SDL_Rect *scrrect, 
		SDL_Surface *dst, SDL_Rect *dstrect) {
	assert(src && dst);
	int x = (scrrect == NULL ? 0 : scrrect->x);
	int y = (scrrect == NULL ? 0 : scrrect->y);
	int w = (scrrect == NULL ? src->w : scrrect->w);
	int h = (scrrect == NULL ? src->h : scrrect->h);

	assert(dstrect);
	if(w == dstrect->w && h == dstrect->h) {
		/* The source rectangle and the destination rectangle
		 * are of the same size. If that is the case, there
		 * is no need to stretch, just copy. */
		SDL_Rect rect;
		rect.x = x;
		rect.y = y;
		rect.w = w;
		rect.h = h;
		SDL_BlitSurface(src, &rect, dst, dstrect);
	}
	else {
		/* No other case occurs in NEMU-PAL. */
		assert(0);
	}
}

SDL_Surface* SDL_CreateRGBSurface(uint32_t flags, int width, int height, int depth,
		uint32_t Rmask, uint32_t Gmask, uint32_t Bmask, uint32_t Amask) {
	SDL_Surface *s = malloc(sizeof(SDL_Surface));
	assert(s);
	s->format = malloc(sizeof(SDL_PixelFormat));
	assert(s);
	s->format->palette = malloc(sizeof(SDL_Palette));
	assert(s->format->palette);
	s->format->palette->colors = NULL;

	s->format->BitsPerPixel = depth;

	s->flags = flags;
	s->w = width;
	s->h = height;
	s->pitch = (width * depth) >> 3;
	s->pixels = (flags & SDL_HWSURFACE ? (void *)VMEM_ADDR : malloc(s->pitch * height));
	assert(s->pixels);

	return s;
}

SDL_Surface* SDL_SetVideoMode(int width, int height, int bpp, uint32_t flags) {
	return SDL_CreateRGBSurface(flags,  width, height, bpp,
			0x000000ff, 0x0000ff00, 0x00ff0000, 0xff000000);
}

void SDL_FreeSurface(SDL_Surface *s) {
	if(s != NULL) {
		if(s->format != NULL) {
			if(s->format->palette != NULL) {
				if(s->format->palette->colors != NULL) {
					free(s->format->palette->colors);
				}
				free(s->format->palette);
			}

			free(s->format);
		}
		
		if(s->pixels != NULL) {
			free(s->pixels);
		}

		free(s);
	}
}

