/* auto/if_perl.c */
void perl_end __ARGS((void));
void msg_split __ARGS((char_u *s, int attr));
void perl_win_free __ARGS((win_t *wp));
void perl_buf_free __ARGS((buf_t *bp));
void ex_perl __ARGS((exarg_t *eap));
void ex_perldo __ARGS((exarg_t *eap));
void XS_VIM_Msg __ARGS((CV *cv));
void XS_VIM_SetOption __ARGS((CV *cv));
void XS_VIM_DoCommand __ARGS((CV *cv));
void XS_VIM_Eval __ARGS((CV *cv));
void XS_VIM_Buffers __ARGS((CV *cv));
void XS_VIM_Windows __ARGS((CV *cv));
void XS_VIWIN_DESTROY __ARGS((CV *cv));
void XS_VIWIN_Buffer __ARGS((CV *cv));
void XS_VIWIN_SetHeight __ARGS((CV *cv));
void XS_VIWIN_Cursor __ARGS((CV *cv));
void XS_VIBUF_DESTROY __ARGS((CV *cv));
void XS_VIBUF_Name __ARGS((CV *cv));
void XS_VIBUF_Number __ARGS((CV *cv));
void XS_VIBUF_Count __ARGS((CV *cv));
void XS_VIBUF_Get __ARGS((CV *cv));
void XS_VIBUF_Set __ARGS((CV *cv));
void XS_VIBUF_Delete __ARGS((CV *cv));
void XS_VIBUF_Append __ARGS((CV *cv));
void boot_VIM __ARGS((CV *cv));
