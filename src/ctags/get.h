/*****************************************************************************
*   $Id$
*
*   Copyright (c) 1998-2000, Darren Hiebert
*
*   This source code is released for free distribution under the terms of the
*   GNU General Public License.
*
*   External interface to get.c
*****************************************************************************/
#ifndef _GET_H
#define _GET_H

/*============================================================================
=   Include files
============================================================================*/
#include "general.h"	/* must always come first */

#include "ctags.h"	/* to define langType */

/*============================================================================
=   Function prototypes
============================================================================*/
extern boolean isBraceFormat __ARGS((void));
extern unsigned int getDirectiveNestLevel __ARGS((void));
extern void cppInit __ARGS((const boolean state));
extern void cppTerminate __ARGS((void));
extern void cppBeginStatement __ARGS((void));
extern void cppEndStatement __ARGS((void));
extern void cppUngetc __ARGS((const int c));
extern int cppGetc __ARGS((void));

#endif	/* _GET_H */

/* vi:set tabstop=8 shiftwidth=4: */