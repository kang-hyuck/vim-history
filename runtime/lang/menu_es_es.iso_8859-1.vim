" Menu Translations:	Espa�ol
" Maintainer:		Eduardo F. Amatria <eferna1@platea.pntic.mec.es>
" Last Change:	2001 Feb 11

" Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1

scriptencoding iso-8859-1

" Help menu
menutrans &Help			Ay&uda
menutrans &Overview<Tab><F1>	&Principal<Tab><F1>
menutrans &How-to\ links	&Enlaces\ a\ �C�mo\.\.\.?
menutrans &GUI			&Interfaz\ gr�fica
menutrans &Credits		&Reconocimientos
menutrans Co&pying		&Copyright
menutrans &Find\.\.\.		&Buscar\.\.\.
menutrans &Version		&Versi�n
menutrans &About		&Acerca\ de\.\.\.

" File menu
menutrans &File				&Archivo
menutrans &Open\.\.\.<Tab>:e		&Abrir\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	A&brir\ en\ otra\ ventana\.\.\.<Tab>:sp
menutrans &New<Tab>:enew		&Nuevo<Tab>:enew
menutrans &Close<Tab>:q			&Cerrar<Tab>:q
menutrans &Save<Tab>:w			&Guardar<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:w	Guardar\ &como\.\.\.<Tab>:w
menutrans &Print			&Imprimir
menutrans Sa&ve-Exit<Tab>:wqa		Gua&rdar\ y\ salir<Tab>:wqa
menutrans E&xit<Tab>:qa			&Salir<Tab>:qa

" Edit menu
menutrans &Edit				&Editar
menutrans &Undo<Tab>u			&Deshacer<Tab>u
menutrans &Redo<Tab>^R			&Rehacer<Tab>^R
menutrans Repea&t<Tab>\.                Repe&tir<Tab>\.
menutrans Cu&t<Tab>"*x			Cor&tar<Tab>"*x
menutrans &Copy<Tab>"*y			&Copiar<Tab>"*y
menutrans &Paste<Tab>"*p		&Pegar<Tab>"*p
menutrans Put\ &Before<Tab>[p		Poner\ &antes<Tab>[p
menutrans Put\ &After<Tab>]p		Poner\ &despu�s<Tab>]p
menutrans &Select\ all<Tab>ggVG		&Seleccionar\ todo<Tab>ggVG
menutrans &Find\.\.\.			&Buscar\.\.\.
menutrans Find\ and\ R&eplace\.\.\.     Buscar\ y\ R&emplazar\.\.\.
menutrans Options\.\.\.			Opciones\.\.\.

" Programming menu
menutrans &Tools			&Herramientas
menutrans &Jump\ to\ this\ tag<Tab>g^]	&Saltar\ a\ este\ �tag�<Tab>g^]
menutrans Jump\ &back<Tab>^T		Saltar\ &atr�s<Tab>^T
menutrans Build\ &Tags\ File		&Generar\ fichero\ de\ �tags�\
menutrans &Make<Tab>:make		Ejecutar\ �&Make�<Tab>:make
menutrans &List\ Errors<Tab>:cl		&Lista\ de\ errores<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	L&ista\ de\ mensajes<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		&Error\ siguiente<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	Error\ &previo<Tab>:cp
menutrans &Older\ List<Tab>:cold	Lista\ de\ &viejos\ a\ nuevos<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	Lista\ de\ &nuevos\ a\ viejos<Tab>:cnew
menutrans Error\ &Window<Tab>:cwin	Ven&tana\ de\ errores<Tab>:cwin
menutrans Convert\ to\ HEX<Tab>:%!xxd	Convertir\ a\ &HEX<Tab>:%!xxd
menutrans Convert\ back<Tab>:%!xxd\ -r	&Convertir\ al\ anterior<Tab>:%!xxd\ -r

" Names for buffer menu.
menutrans &Buffers	&Buffers
menutrans Refresh	Refrescar
menutrans Delete	Suprimir
menutrans Alternate	Alternar
menutrans [No\ File]    [Sin\ fichero]

" Window menu
menutrans &Window			&Ventana
menutrans &New<Tab>^Wn			&Nueva<Tab>^Wn
menutrans S&plit<Tab>^Ws		&Dividir<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	D&ividir\ a\ #<Tab>^W^^
menutrans S&plit\ Vertically<Tab>^Wv    Dividir\ &verticalmente<Tab>^Wv
menutrans &Close<Tab>^Wc		&Cerrar<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	Cerrar\ &otra(s)<Tab>^Wo
menutrans Ne&xt<Tab>^Ww			&Siguiente<Tab>^Ww
menutrans P&revious<Tab>^WW		&Previa<Tab>^WW
menutrans &Equal\ Height<Tab>^W=	&Misma\ altura<Tab>^W=
menutrans &Max\ Height<Tab>^W_		Altura\ &m�xima<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		Altura\ m�&nima<Tab>^W1_
menutrans Max\ Width<Tab>^W\|		Anchura\ m�xima<Tab>^W\|
menutrans Min\ Width<Tab>^W1\|		Anchura\ m�nima<Tab>^W1\|
menutrans Rotate\ &Up<Tab>^WR		&Rotar\ hacia\ arriba<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		Rotar\ hacia\ a&bajo<Tab>^Wr
menutrans Select\ &Font\.\.\.		Seleccionar\ &fuente\.\.\.


" Window menu
menutrans &Window			&Ventana
menutrans &New<Tab>^Wn			&Nueva<Tab>^Wn
menutrans S&plit<Tab>^Ws		&Dividir<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	D&ividir\ a\ #<Tab>^W^^
menutrans S&plit\ Vertically<Tab>^Wv    Dividir\ &verticalmente<Tab>^Wv
menutrans &Close<Tab>^Wc		&Cerrar<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	Cerrar\ &otra(s)<Tab>^Wo
menutrans Ne&xt<Tab>^Ww			&Siguiente<Tab>^Ww
menutrans P&revious<Tab>^WW		&Previa<Tab>^WW
menutrans &Equal\ Height<Tab>^W=	&Misma\ altura<Tab>^W=
menutrans &Max\ Height<Tab>^W_		Altura\ &m�xima<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		Altura\ m�&nima<Tab>^W1_
menutrans Max\ Width<Tab>^W\|		Anchura\ m�xima<Tab>^W\|
menutrans Min\ Width<Tab>^W1\|		Anchura\ m�nima<Tab>^W1\|
menutrans Rotate\ &Up<Tab>^WR		&Rotar\ hacia\ arriba<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		Rotar\ hacia\ a&bajo<Tab>^Wr
menutrans Select\ &Font\.\.\.		Seleccionar\ &fuente\.\.\.

" The popup menu
menutrans &Undo		        &Deshacer
menutrans Cu&t			Cor&tar
menutrans &Copy			&Copiar
menutrans &Paste		&Pegar
menutrans &Delete		&Borrar
menutrans Select\ Blockwise 	Seleccionar\ por\ bloque
menutrans Select\ &Word		Seleccionar\ &palabra
menutrans Select\ &Line		Seleccionar\ una\ &l�nea
menutrans Select\ &Block	Seleccionar\ un\ &bloque
menutrans Select\ &All		Seleccionar\ &todo
 
" The GUI toolbar (for Win32 or GTK)
if has("win32") || has("gui_gtk")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		Abrir fichero 
    tmenu ToolBar.Save		Guardar fichero
    tmenu ToolBar.SaveAll	Guardar todos los ficheros
    tmenu ToolBar.Print		Imprimir
    tmenu ToolBar.Undo		Deshacer
    tmenu ToolBar.Redo		Rehacer
    tmenu ToolBar.Cut		Cortar
    tmenu ToolBar.Copy		Copiar
    tmenu ToolBar.Paste		Pegar
    tmenu ToolBar.Find		Buscar...
    tmenu ToolBar.FindNext	Buscar siguiente 
    tmenu ToolBar.FindPrev	Buscar precedente
    tmenu ToolBar.Replace	Buscar y remplazar
    tmenu ToolBar.LoadSesn	Cargar sesi�n
    tmenu ToolBar.SaveSesn	Guardar sesi�n
    tmenu ToolBar.RunScript	Ejecutar un �script�
    tmenu ToolBar.Make		Ejecutar �Make�
    tmenu ToolBar.Shell		Abrir una �Shell�
    tmenu ToolBar.RunCtags	Generar un fichero de �tags�
    tmenu ToolBar.TagJump	Saltar a un �tag�
    tmenu ToolBar.Help		Ayuda
    tmenu ToolBar.FindHelp	Buscar en la ayuda...
  endfun
endif

" Syntax menu
menutrans &Syntax		&Sintaxis
menutrans Set\ 'syntax'\ only	Activar\ s�lo\ �sintaxis�
menutrans Set\ 'filetype'\ too	Activar\ tambi�n\ �tipo\ de\ fichero�
menutrans &Off			&Desactivar
menutrans &Manual		&Manual
menutrans A&utomatic		A&utom�tica
menutrans &on\ (this\ file)	&Activar\ (en\ este\ fichero)
menutrans o&ff\ (this\ file)	D&esactivar (en\ este\ fichero)
menutrans Co&lor\ test		&Prueba\ del\ color
menutrans &Highlight\ test	Prueba\ del\ &realzado
menutrans &Convert\ to\ HTML	&Convertir\ en\ HTML