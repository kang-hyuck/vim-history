/* syntax.c */
void syntax_start __ARGS((win_t *wp, linenr_t lnum));
void syn_stack_free_all __ARGS((buf_t *buf));
void syn_stack_apply_changes __ARGS((buf_t *buf));
int syntax_check_changed __ARGS((linenr_t lnum));
int get_syntax_attr __ARGS((colnr_t col));
void syntax_clear __ARGS((buf_t *buf));
void ex_syntax __ARGS((exarg_t *eap));
int syntax_present __ARGS((buf_t *buf));
void set_context_in_syntax_cmd __ARGS((char_u *arg));
char_u *get_syntax_name __ARGS((int idx));
int syn_get_id __ARGS((long lnum, long col, int trans));
int syn_get_foldlevel __ARGS((win_t *wp, long lnum));
void init_highlight __ARGS((int both));
void do_highlight __ARGS((char_u *line, int forceit, int init));
void set_normal_colors __ARGS((void));
void hl_set_font_name __ARGS((char_u *font_name));
void hl_set_bg_color_name __ARGS((char_u *name));
void hl_set_fg_color_name __ARGS((char_u *name));
attrentry_t *syn_gui_attr2entry __ARGS((int attr));
attrentry_t *syn_term_attr2entry __ARGS((int attr));
attrentry_t *syn_cterm_attr2entry __ARGS((int attr));
char_u *highlight_has_attr __ARGS((int id, int flag, int modec));
char_u *highlight_color __ARGS((int id, char_u *what, int modec));
int syn_name2id __ARGS((char_u *name));
int highlight_exists __ARGS((char_u *name));
int syn_check_group __ARGS((char_u *pp, int len));
int syn_id2attr __ARGS((int hl_id));
int syn_id2colors __ARGS((int hl_id, guicolor_t *fgp, guicolor_t *bgp));
int syn_get_final_id __ARGS((int hl_id));
void highlight_gui_started __ARGS((void));
int highlight_changed __ARGS((void));
void set_context_in_highlight_cmd __ARGS((char_u *arg));
char_u *get_highlight_name __ARGS((int idx));
void free_highlight_fonts __ARGS((void));
