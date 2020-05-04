let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
cnoremap <expr> <Plug>EasyClipCommandModePaste '' . EasyClip#GetDefaultReg()
imap <expr> <Plug>EasyClipInsertModePaste '<Plug>PasteToggle' . EasyClip#GetDefaultReg() . '<Plug>PasteToggle'
inoremap <S-Tab> 
nmap <silent>  <Plug>EasyClipSwapPasteBackwards
nmap  :set invnumber
nmap <silent>  <Plug>EasyClipSwapPasteForward
nmap  <Plug>(RepeatRedo)
vnoremap  `.``gvP``P
snoremap   "_c 
snoremap ! "_c!
snoremap " "_c"
snoremap # "_c#
snoremap $ "_c$
snoremap % "_c%
snoremap & "_c&
snoremap ' "_c'
snoremap ( "_c(
snoremap ) "_c)
snoremap * "_c*
snoremap + "_c+
snoremap , "_c,
snoremap - "_c-
nmap . <Plug>(RepeatDot)
snoremap . "_c.
snoremap / "_c/
vnoremap // y/"
snoremap 0 "_c0
snoremap 1 "_c1
snoremap 2 "_c2
snoremap 3 "_c3
snoremap 4 "_c4
snoremap 5 "_c5
snoremap 6 "_c6
snoremap 7 "_c7
snoremap 8 "_c8
snoremap 9 "_c9
snoremap : "_c:
snoremap ; "_c;
snoremap < "_c<
snoremap = "_c=
snoremap > "_c>
snoremap ? "_c?
snoremap @ "_c@
snoremap A "_cA
snoremap B "_cB
snoremap C "_cC
xnoremap <silent> C "_C
nnoremap <silent> C "_C
snoremap D "_cD
xnoremap <silent> D "_D
nnoremap <silent> D "_D
snoremap E "_cE
snoremap F "_cF
snoremap G "_cG
snoremap H "_cH
snoremap I "_cI
snoremap J "_cJ
snoremap K "_cK
snoremap L "_cL
snoremap M "_cM
snoremap N "_cN
snoremap O "_cO
snoremap P "_cP
nmap <silent> P <Plug>EasyClipPasteBefore
xmap <silent> P <Plug>XEasyClipPaste
snoremap Q "_cQ
snoremap R "_cR
snoremap S "_cS
nnoremap <silent> S "_S
xmap S <Plug>VSurround
snoremap T "_cT
nmap U <Plug>(RepeatUndoLine)
snoremap U "_cU
snoremap V "_cV
snoremap W "_cW
snoremap X "_cX
xnoremap <silent> X "_X
nnoremap <silent> X "_X
snoremap Y "_cY
nnoremap <silent> Y :EasyClipBeforeYanky$:EasyClipOnYanksChanged
snoremap Z "_cZ
snoremap [ "_c[
nnoremap <silent> [B :bfirst
nnoremap <silent> [b :bprevious
snoremap \ "_c\
nmap <silent> \P <Plug>EasyClipPasteUnformattedBefore
nmap <silent> \p <Plug>EasyClipPasteUnformattedAfter
xmap <silent> \P <Plug>XEasyClipPasteUnformatted
xmap <silent> \p <Plug>XEasyClipPasteUnformatted
snoremap ] "_c]
nnoremap <silent> ]B :blast
nnoremap <silent> ]b :bnext
snoremap ^ "_c^
snoremap _ "_c_
map _L :py3file ~/bin/palilookup2.py
map _c :lclose
map _f :set foldmethod=marker:set foldmarker={,}
map _b :set scb!:set scb!
map _O Oj	
map _o ok
map _\ a\\x  
map _r ax  
snoremap ` "_c`
snoremap a "_ca
snoremap b "_cb
snoremap c "_cc
nnoremap <silent> cc "_S
xnoremap <silent> c "_c
nnoremap <silent> c "_c
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
snoremap d "_cd
nnoremap <silent> dD 0"_d$
nnoremap <silent> dd "_dd
xnoremap <silent> d "_d
nnoremap <silent> d "_d
nmap ds <Plug>Dsurround
snoremap e "_ce
snoremap f "_cf
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
snoremap g "_cg
nmap <silent> g\P <Plug>G_EasyClipPasteUnformattedBefore
nmap <silent> g\p <Plug>G_EasyClipPasteUnformattedAfter
nmap <silent> gP <Plug>G_EasyClipPasteBefore
nmap <silent> gp <Plug>G_EasyClipPasteAfter
xmap <silent> gP <Plug>XG_EasyClipPaste
xmap <silent> gp <Plug>XG_EasyClipPaste
xmap gS <Plug>VgSurround
snoremap h "_ch
snoremap i "_ci
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
snoremap l "_cl
snoremap m "_cm
xmap <silent> m <Plug>MoveMotionXPlug
nmap <silent> mm <Plug>MoveMotionLinePlug
nmap <silent> m <Plug>MoveMotionPlug
snoremap n "_cn
snoremap o "_co
snoremap p "_cp
nmap <silent> p <Plug>EasyClipPasteAfter
xmap <silent> p <Plug>XEasyClipPaste
snoremap q "_cq
snoremap r "_cr
snoremap s "_cs
xnoremap <silent> s "_s
nnoremap <silent> s "_s
snoremap t "_ct
nmap u <Plug>(RepeatUndo)
snoremap u "_cu
snoremap v "_cv
snoremap w "_cw
snoremap x "_cx
xnoremap <silent> x "_x
nnoremap <silent> x "_x
snoremap y "_cy
xmap <silent> y <Plug>VisualModeYank
nmap <silent> yy <Plug>YankLinePreserveCursorPosition
nmap <silent> y <Plug>YankPreserveCursorPosition
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap z "_cz
snoremap { "_c{
snoremap | "_c
snoremap } "_c}
snoremap ~ "_c~
nnoremap <silent> <Plug>(RepeatRedo) :call repeat#wrap("\<C-R>",v:count)
nnoremap <silent> <Plug>(RepeatUndoLine) :call repeat#wrap('U',v:count)
nnoremap <silent> <Plug>(RepeatUndo) :call repeat#wrap('u',v:count)
nnoremap <silent> <Plug>(RepeatDot) :exe repeat#run(v:count)
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>(ale_go_to_definition_in_tab) :ALEGoToDefinitionInTab
nnoremap <silent> <Plug>(ale_go_to_definition) :ALEGoToDefinition
nnoremap <silent> <Plug>(ale_fix) :ALEFix
nnoremap <silent> <Plug>(ale_detail) :ALEDetail
nnoremap <silent> <Plug>(ale_lint) :ALELint
nnoremap <silent> <Plug>(ale_reset_buffer) :ALEResetBuffer
nnoremap <silent> <Plug>(ale_disable_buffer) :ALEDisableBuffer
nnoremap <silent> <Plug>(ale_enable_buffer) :ALEEnableBuffer
nnoremap <silent> <Plug>(ale_toggle_buffer) :ALEToggleBuffer
nnoremap <silent> <Plug>(ale_reset) :ALEReset
nnoremap <silent> <Plug>(ale_disable) :ALEDisable
nnoremap <silent> <Plug>(ale_enable) :ALEEnable
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle
nnoremap <silent> <Plug>(ale_last) :ALELast
nnoremap <silent> <Plug>(ale_first) :ALEFirst
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap
nnoremap <silent> <Plug>(ale_next) :ALENext
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious
snoremap <BS> "_c
nnoremap <silent> <expr> <Plug>YankPreserveCursorPosition ":call EasyClip#Yank#PreYankMotion():set opfunc=EasyClip#Yank#YankMotion" . (v:count > 0 ? v:count : '') . "g@"
nnoremap <silent> <Plug>YankLinePreserveCursorPosition :call EasyClip#Yank#PreYankMotion():call EasyClip#Yank#YankLine()
nnoremap <Plug>EasyClipRotateYanksBackward :call EasyClip#Yank#ManuallyRotateYanks(-1)
nnoremap <Plug>EasyClipRotateYanksForward :call EasyClip#Yank#ManuallyRotateYanks(1)
nnoremap <silent> <Plug>YankMotionEndOfLinePlug :EasyClipBeforeYanky$:EasyClipOnYanksChanged
nnoremap <silent> <Plug>SubstituteLine :call EasyClip#Substitute#SubstituteLine(v:register, v:count):call repeat#set("\<Plug>SubstituteLine")
nnoremap <silent> <Plug>G_SubstituteToEndOfLine :call EasyClip#Substitute#SubstituteToEndOfLine(v:register, 0):call repeat#set("\<Plug>G_SubstituteToEndOfLine")
nnoremap <silent> <Plug>SubstituteToEndOfLine :call EasyClip#Substitute#SubstituteToEndOfLine(v:register, 1):call repeat#set("\<Plug>SubstituteToEndOfLine")
nnoremap <silent> <Plug>G_SubstituteOverMotionMap :call EasyClip#Substitute#OnPreSubstitute(v:register, 0):set opfunc=EasyClip#Substitute#SubstituteMotiong@
nnoremap <silent> <Plug>SubstituteOverMotionMap :call EasyClip#Substitute#OnPreSubstitute(v:register, 1):set opfunc=EasyClip#Substitute#SubstituteMotiong@
nnoremap <silent> <expr> <Plug>MoveMotionPlug ":call EasyClip#Move#PreMoveMotion():set opfunc=EasyClip#Move#MoveMotion" . (v:count > 0 ? v:count : '') . "g@"
nnoremap <silent> <expr> <Plug>MoveMotionLinePlug ':EasyClipBeforeYank'. v:count .'yy'. v:count . '"_dd:EasyClipOnYanksChanged:call repeat#set("\<Plug>MoveMotionLinePlug")'
nnoremap <silent> <Plug>MoveMotionReplaceLinePlug :EasyClipBeforeYank0y$:EasyClipOnYanksChanged"_d$:call repeat#set("\<Plug>MoveMotionReplaceLinePlug")
nnoremap <silent> <Plug>MoveMotionEndOfLinePlug :EasyClipBeforeYanky$:EasyClipOnYanksChanged"_d$:call repeat#set("\<Plug>MoveMotionEndOfLinePlug")
nnoremap <silent> <Plug>EasyClipToggleFormattedPaste :call EasyClip#Paste#ToggleFormattedPaste()
xnoremap <silent> <Plug>XG_EasyClipPasteUnformatted "_d:call EasyClip#Paste#PasteText(v:register, v:count, 'gP', 0, "G_EasyClipPasteUnformattedBefore")
nnoremap <silent> <Plug>XEasyClipPasteUnformatted "_d:call EasyClip#Paste#PasteText(v:register, v:count, 'P', 0, "EasyClipPasteUnformattedBefore")
nnoremap <silent> <Plug>G_EasyClipPasteUnformattedBefore :call EasyClip#Paste#PasteText(v:register, v:count, 'gP', 0, "G_EasyClipPasteUnformattedBefore")
nnoremap <silent> <Plug>G_EasyClipPasteUnformattedAfter :call EasyClip#Paste#PasteText(v:register, v:count, 'gp', 0, "G_EasyClipPasteUnformattedAfter")
nnoremap <silent> <Plug>EasyClipPasteUnformattedBefore :call EasyClip#Paste#PasteText(v:register, v:count, 'P', 0, "EasyClipPasteUnformattedBefore")
nnoremap <silent> <Plug>EasyClipPasteUnformattedAfter :call EasyClip#Paste#PasteText(v:register, v:count, 'p', 0, "EasyClipPasteUnformattedAfter")
xnoremap <silent> <Plug>XG_EasyClipPaste "_d:call EasyClip#Paste#PasteText(v:register, v:count, 'gP', 1, "G_EasyClipPasteBefore")
nnoremap <silent> <Plug>G_EasyClipPasteBefore :call EasyClip#Paste#PasteText(v:register, v:count, 'gP', 1, "G_EasyClipPasteBefore")
nnoremap <silent> <Plug>G_EasyClipPasteAfter :call EasyClip#Paste#PasteText(v:register, v:count, 'gp', 1, "G_EasyClipPasteAfter")
xnoremap <silent> <expr> <Plug>XEasyClipPaste ':call EasyClip#Paste#PasteTextVisualMode(''' . v:register . ''',' . v:count . ')'
nnoremap <silent> <Plug>EasyClipPasteBefore :call EasyClip#Paste#PasteText(v:register, v:count, 'P', 1, "EasyClipPasteBefore")
nnoremap <silent> <Plug>EasyClipPasteAfter :call EasyClip#Paste#PasteText(v:register, v:count, 'p', 1, "EasyClipPasteAfter")
nnoremap <silent> <Plug>EasyClipSwapPasteBackwards :call EasyClip#Paste#SwapPaste(0)
nnoremap <silent> <Plug>EasyClipSwapPasteForward :call EasyClip#Paste#SwapPaste(1)
nnoremap <silent> <Plug>SurroundRepeat .
map <F4> :NERDTreeToggle
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
cmap w!! w !sudo tee > /dev/null %
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=2
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set laststatus=2
set nomodeline
set operatorfunc=EasyClip#Move#MoveMotion
set pastetoggle=<Plug>PasteToggle
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/plugged/nerdtree/,~/.vim/plugged/python-mode/,~/.vim/plugged/vim-texlog/,~/.vim/plugged/vimtex/,~/.vim/plugged/vim-dispatch/,~/.vim/plugged/vim-surround/,~/.vim/plugged/vim-repeat/,~/.vim/plugged/vim-easyclip/,~/.vim/plugged/asyncrun.vim/,~/.vim/plugged/ale/,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/plugged/python-mode/after,~/.vim/plugged/vimtex/after,~/.vim/plugged/ale/after,~/.vim/after
set shiftround
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [U+%04B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.sty,.cls,.fdb_latexmk,.fls,.pdf,.synctex.gz
set timeoutlen=2000
set wildignore=*.pyc
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /media/sf_KONDANNO/texfiles/sutta/atthakavaggo
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/bin/vimhelp.txt
badd +1 atthakavaggo_pali.txt
badd +1 atthakavaggo_eng.txt
badd +172 ~/.vimrc
badd +0 atthakavaggo_master_alternating.tex
badd +49 ~/bin/txmakerwrapper.py
badd +152 ~/bin/txmkr
argglobal
silent! argdel *
argadd atthakavaggo_pali.txt
set stal=2
edit atthakavaggo_eng.txt
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 158 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 157 + 158) / 316)
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:-,fb:*
setlocal commentstring=
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'text'
setlocal filetype=text
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
set scrollbind
setlocal scrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'text'
setlocal syntax=text
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 77 - ((76 * winheight(0) + 38) / 77)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
77
normal! 0
wincmd w
argglobal
edit atthakavaggo_pali.txt
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:-,fb:*
setlocal commentstring=
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'text'
setlocal filetype=text
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
set scrollbind
setlocal scrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'text'
setlocal syntax=text
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 38) / 77)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 158 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 157 + 158) / 316)
tabedit atthakavaggo_master_alternating.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <F7> <Plug>(vimtex-cmd-create)
inoremap <buffer> <silent> <Plug>(vimtex-delim-close) =vimtex#delim#close()
inoremap <buffer> <silent> <Plug>(vimtex-cmd-create) =vimtex#cmd#create_insert()
omap <buffer> <silent> % <Plug>(vimtex-%)
xmap <buffer> <silent> % <Plug>(vimtex-%)
nmap <buffer> <silent> % <Plug>(vimtex-%)
nmap <buffer> <silent> K <Plug>(vimtex-doc-package)
omap <buffer> <silent> [[ <Plug>(vimtex-[[)
omap <buffer> <silent> [] <Plug>(vimtex-[])
xmap <buffer> <silent> [[ <Plug>(vimtex-[[)
xmap <buffer> <silent> [] <Plug>(vimtex-[])
nmap <buffer> <silent> [[ <Plug>(vimtex-[[)
nmap <buffer> <silent> [] <Plug>(vimtex-[])
nmap <buffer> <silent> \lm <Plug>(vimtex-imaps-list)
nmap <buffer> <silent> \lv <Plug>(vimtex-view)
nmap <buffer> <silent> \lY <Plug>(vimtex-labels-toggle)
nmap <buffer> <silent> \ly <Plug>(vimtex-labels-open)
nmap <buffer> <silent> \lT <Plug>(vimtex-toc-toggle)
nmap <buffer> <silent> \lt <Plug>(vimtex-toc-open)
nmap <buffer> <silent> \lG <Plug>(vimtex-status-all)
nmap <buffer> <silent> \lg <Plug>(vimtex-status)
nmap <buffer> <silent> \lC <Plug>(vimtex-clean-full)
nmap <buffer> <silent> \lc <Plug>(vimtex-clean)
nmap <buffer> <silent> \le <Plug>(vimtex-errors)
nmap <buffer> <silent> \lK <Plug>(vimtex-stop-all)
nmap <buffer> <silent> \lk <Plug>(vimtex-stop)
xmap <buffer> <silent> \lL <Plug>(vimtex-compile-selected)
nmap <buffer> <silent> \lL <Plug>(vimtex-compile-selected)
nmap <buffer> <silent> \lo <Plug>(vimtex-compile-output)
nmap <buffer> <silent> \ll <Plug>(vimtex-compile)
nmap <buffer> <silent> \lq <Plug>(vimtex-log)
nmap <buffer> <silent> \ls <Plug>(vimtex-toggle-main)
nmap <buffer> <silent> \lX <Plug>(vimtex-reload-state)
nmap <buffer> <silent> \lx <Plug>(vimtex-reload)
nmap <buffer> <silent> \lI <Plug>(vimtex-info-full)
nmap <buffer> <silent> \li <Plug>(vimtex-info)
omap <buffer> <silent> ][ <Plug>(vimtex-][)
omap <buffer> <silent> ]] <Plug>(vimtex-]])
xmap <buffer> <silent> ][ <Plug>(vimtex-][)
xmap <buffer> <silent> ]] <Plug>(vimtex-]])
nmap <buffer> <silent> ][ <Plug>(vimtex-][)
nmap <buffer> <silent> ]] <Plug>(vimtex-]])
omap <buffer> <silent> aP <Plug>(vimtex-aP)
xmap <buffer> <silent> aP <Plug>(vimtex-aP)
omap <buffer> <silent> a$ <Plug>(vimtex-a$)
xmap <buffer> <silent> a$ <Plug>(vimtex-a$)
omap <buffer> <silent> ae <Plug>(vimtex-ae)
xmap <buffer> <silent> ae <Plug>(vimtex-ae)
omap <buffer> <silent> ad <Plug>(vimtex-ad)
xmap <buffer> <silent> ad <Plug>(vimtex-ad)
omap <buffer> <silent> ac <Plug>(vimtex-ac)
xmap <buffer> <silent> ac <Plug>(vimtex-ac)
nmap <buffer> <silent> csd <Plug>(vimtex-delim-change-math)
nmap <buffer> <silent> csc <Plug>(vimtex-cmd-change)
nmap <buffer> <silent> cse <Plug>(vimtex-env-change)
nmap <buffer> <silent> cs$ <Plug>(vimtex-env-change-math)
nmap <buffer> <silent> dsd <Plug>(vimtex-delim-delete)
nmap <buffer> <silent> dsc <Plug>(vimtex-cmd-delete)
nmap <buffer> <silent> dse <Plug>(vimtex-env-delete)
nmap <buffer> <silent> ds$ <Plug>(vimtex-env-delete-math)
omap <buffer> <silent> iP <Plug>(vimtex-iP)
xmap <buffer> <silent> iP <Plug>(vimtex-iP)
omap <buffer> <silent> i$ <Plug>(vimtex-i$)
xmap <buffer> <silent> i$ <Plug>(vimtex-i$)
omap <buffer> <silent> ie <Plug>(vimtex-ie)
xmap <buffer> <silent> ie <Plug>(vimtex-ie)
omap <buffer> <silent> id <Plug>(vimtex-id)
xmap <buffer> <silent> id <Plug>(vimtex-id)
omap <buffer> <silent> ic <Plug>(vimtex-ic)
xmap <buffer> <silent> ic <Plug>(vimtex-ic)
xmap <buffer> <silent> tsD <Plug>(vimtex-delim-toggle-modifier-reverse)
nmap <buffer> <silent> tsD <Plug>(vimtex-delim-toggle-modifier-reverse)
xmap <buffer> <silent> tsd <Plug>(vimtex-delim-toggle-modifier)
nmap <buffer> <silent> tsd <Plug>(vimtex-delim-toggle-modifier)
nmap <buffer> <silent> tsc <Plug>(vimtex-cmd-toggle-star)
nmap <buffer> <silent> tse <Plug>(vimtex-env-toggle-star)
xmap <buffer> <silent> <F7> <Plug>(vimtex-cmd-create)
nmap <buffer> <silent> <F7> <Plug>(vimtex-cmd-create)
nnoremap <buffer> <Plug>(vimtex-view) :call b:vimtex.viewer.view('')
nnoremap <buffer> <Plug>(vimtex-toc-toggle) :call b:vimtex.toc.toggle()
nnoremap <buffer> <Plug>(vimtex-toc-open) :call b:vimtex.toc.open()
onoremap <buffer> <silent> <Plug>(vimtex-aP) :call vimtex#text_obj#sections(0, 0)
onoremap <buffer> <silent> <Plug>(vimtex-iP) :call vimtex#text_obj#sections(1, 0)
xnoremap <buffer> <silent> <Plug>(vimtex-aP) :call vimtex#text_obj#sections(0, 1)
xnoremap <buffer> <silent> <Plug>(vimtex-iP) :call vimtex#text_obj#sections(1, 1)
onoremap <buffer> <silent> <Plug>(vimtex-a$) :call vimtex#text_obj#delimited(0, 0,'env_math')
onoremap <buffer> <silent> <Plug>(vimtex-i$) :call vimtex#text_obj#delimited(1, 0,'env_math')
xnoremap <buffer> <silent> <Plug>(vimtex-a$) :call vimtex#text_obj#delimited(0, 1,'env_math')
xnoremap <buffer> <silent> <Plug>(vimtex-i$) :call vimtex#text_obj#delimited(1, 1,'env_math')
onoremap <buffer> <silent> <Plug>(vimtex-ae) :call vimtex#text_obj#delimited(0, 0,'env_tex')
onoremap <buffer> <silent> <Plug>(vimtex-ie) :call vimtex#text_obj#delimited(1, 0,'env_tex')
xnoremap <buffer> <silent> <Plug>(vimtex-ae) :call vimtex#text_obj#delimited(0, 1,'env_tex')
xnoremap <buffer> <silent> <Plug>(vimtex-ie) :call vimtex#text_obj#delimited(1, 1,'env_tex')
onoremap <buffer> <silent> <Plug>(vimtex-ad) :call vimtex#text_obj#delimited(0, 0,'delim_all')
onoremap <buffer> <silent> <Plug>(vimtex-id) :call vimtex#text_obj#delimited(1, 0,'delim_all')
xnoremap <buffer> <silent> <Plug>(vimtex-ad) :call vimtex#text_obj#delimited(0, 1,'delim_all')
xnoremap <buffer> <silent> <Plug>(vimtex-id) :call vimtex#text_obj#delimited(1, 1,'delim_all')
onoremap <buffer> <silent> <Plug>(vimtex-ac) :call vimtex#text_obj#commands(0, 0)
onoremap <buffer> <silent> <Plug>(vimtex-ic) :call vimtex#text_obj#commands(1, 0)
xnoremap <buffer> <silent> <Plug>(vimtex-ac) :call vimtex#text_obj#commands(0, 1)
xnoremap <buffer> <silent> <Plug>(vimtex-ic) :call vimtex#text_obj#commands(1, 1)
nnoremap <buffer> <Plug>(vimtex-reload-state) :VimtexReloadState
nnoremap <buffer> <Plug>(vimtex-toggle-main) :VimtexToggleMain
nnoremap <buffer> <Plug>(vimtex-errors) :call vimtex#qf#toggle()
xnoremap <buffer> <silent> <SNR>134_(vimtex-[[) :call vimtex#motion#next_section(0,1,1)
xnoremap <buffer> <silent> <SNR>134_(vimtex-[]) :call vimtex#motion#next_section(1,1,1)
xnoremap <buffer> <silent> <SNR>134_(vimtex-][) :call vimtex#motion#next_section(1,0,1)
xnoremap <buffer> <silent> <SNR>134_(vimtex-]]) :call vimtex#motion#next_section(0,0,1)
nnoremap <buffer> <silent> <Plug>(vimtex-[[) :call vimtex#motion#next_section(0,1,0)
nnoremap <buffer> <silent> <Plug>(vimtex-[]) :call vimtex#motion#next_section(1,1,0)
nnoremap <buffer> <silent> <Plug>(vimtex-][) :call vimtex#motion#next_section(1,0,0)
nnoremap <buffer> <silent> <Plug>(vimtex-]]) :call vimtex#motion#next_section(0,0,0)
xnoremap <buffer> <silent> <SNR>134_(vimtex-%) :call vimtex#motion#find_matching_pair(1)
nnoremap <buffer> <silent> <Plug>(vimtex-%) :call vimtex#motion#find_matching_pair()
nnoremap <buffer> <SNR>134_(V) V
nnoremap <buffer> <SNR>134_(v) v
nnoremap <buffer> <Plug>(vimtex-reload) :VimtexReload
nnoremap <buffer> <Plug>(vimtex-log) :VimtexLog
nnoremap <buffer> <Plug>(vimtex-labels-toggle) :call b:vimtex.labels.toggle()
nnoremap <buffer> <Plug>(vimtex-labels-open) :call b:vimtex.labels.open()
nnoremap <buffer> <Plug>(vimtex-info-full) :VimtexInfo!
nnoremap <buffer> <Plug>(vimtex-info) :VimtexInfo
nnoremap <buffer> <Plug>(vimtex-imaps-list) :call vimtex#imaps#list()
nnoremap <buffer> <silent> <Plug>(vimtex-env-toggle-star) :call vimtex#env#toggle_star()
nnoremap <buffer> <silent> <Plug>(vimtex-env-change-math) :call vimtex#env#change_prompt('env_math')
nnoremap <buffer> <silent> <Plug>(vimtex-env-delete-math) :call vimtex#env#delete('env_math')
nnoremap <buffer> <silent> <Plug>(vimtex-env-change) :call vimtex#env#change_prompt('env_tex')
nnoremap <buffer> <silent> <Plug>(vimtex-env-delete) :call vimtex#env#delete('env_tex')
nnoremap <buffer> <Plug>(vimtex-doc-package) :VimtexDocPackage
nnoremap <buffer> <silent> <Plug>(vimtex-delim-delete) :call vimtex#delim#delete()
nnoremap <buffer> <silent> <Plug>(vimtex-delim-change-math) :call vimtex#delim#change_prompt()
xnoremap <buffer> <silent> <Plug>(vimtex-delim-toggle-modifier-reverse) :call vimtex#delim#toggle_modifier_visual({'dir': -1})
xnoremap <buffer> <silent> <Plug>(vimtex-delim-toggle-modifier) :call vimtex#delim#toggle_modifier_visual()
nnoremap <buffer> <silent> <Plug>(vimtex-delim-toggle-modifier-reverse) :call vimtex#delim#toggle_modifier({'dir': -1})
nnoremap <buffer> <silent> <Plug>(vimtex-delim-toggle-modifier) :call vimtex#delim#toggle_modifier()
nnoremap <buffer> <Plug>(vimtex-status-all) :call vimtex#compiler#status(1)
nnoremap <buffer> <Plug>(vimtex-status) :call vimtex#compiler#status(0)
nnoremap <buffer> <Plug>(vimtex-clean-full) :call vimtex#compiler#clean(1)
nnoremap <buffer> <Plug>(vimtex-clean) :call vimtex#compiler#clean(0)
nnoremap <buffer> <Plug>(vimtex-stop-all) :call vimtex#compiler#stop_all()
nnoremap <buffer> <Plug>(vimtex-stop) :call vimtex#compiler#stop()
nnoremap <buffer> <Plug>(vimtex-compile-output) :call vimtex#compiler#output()
xnoremap <buffer> <Plug>(vimtex-compile-selected) :call vimtex#compiler#compile_selected('visual')
nnoremap <buffer> <Plug>(vimtex-compile-selected) :set opfunc=vimtex#compiler#compile_selectedg@
nnoremap <buffer> <Plug>(vimtex-compile-ss) :call vimtex#compiler#compile_ss()
nnoremap <buffer> <Plug>(vimtex-compile) :call vimtex#compiler#compile()
nnoremap <buffer> <silent> <Plug>(vimtex-cmd-toggle-star) :call vimtex#cmd#toggle_star()
xnoremap <buffer> <silent> <Plug>(vimtex-cmd-create) :call vimtex#cmd#create_ask(1)
nnoremap <buffer> <silent> <Plug>(vimtex-cmd-create) :call vimtex#cmd#create_ask(0)
nnoremap <buffer> <silent> <Plug>(vimtex-cmd-change) :call vimtex#cmd#change()
nnoremap <buffer> <silent> <Plug>(vimtex-cmd-delete) :call vimtex#cmd#delete()
imap <buffer> <silent> ]] <Plug>(vimtex-delim-close)
inoremap <buffer> <silent> <expr> `vr vimtex#imaps#wrap_math("`vr", '\varrho')
inoremap <buffer> <silent> <expr> `vq vimtex#imaps#wrap_math("`vq", '\vartheta')
inoremap <buffer> <silent> <expr> `vk vimtex#imaps#wrap_math("`vk", '\varkappa')
inoremap <buffer> <silent> <expr> `vf vimtex#imaps#wrap_math("`vf", '\varphi')
inoremap <buffer> <silent> <expr> `ve vimtex#imaps#wrap_math("`ve", '\varepsilon')
inoremap <buffer> <silent> <expr> `Y vimtex#imaps#wrap_math("`Y", '\Psi')
inoremap <buffer> <silent> <expr> `X vimtex#imaps#wrap_math("`X", '\Xi')
inoremap <buffer> <silent> <expr> `W vimtex#imaps#wrap_math("`W", '\Omega')
inoremap <buffer> <silent> <expr> `U vimtex#imaps#wrap_math("`U", '\Upsilon')
inoremap <buffer> <silent> <expr> `S vimtex#imaps#wrap_math("`S", '\Sigma')
inoremap <buffer> <silent> <expr> `Q vimtex#imaps#wrap_math("`Q", '\Theta')
inoremap <buffer> <silent> <expr> `P vimtex#imaps#wrap_math("`P", '\Pi')
inoremap <buffer> <silent> <expr> `L vimtex#imaps#wrap_math("`L", '\Lambda')
inoremap <buffer> <silent> <expr> `F vimtex#imaps#wrap_math("`F", '\Phi')
inoremap <buffer> <silent> <expr> `D vimtex#imaps#wrap_math("`D", '\Delta')
inoremap <buffer> <silent> <expr> `G vimtex#imaps#wrap_math("`G", '\Gamma')
inoremap <buffer> <silent> <expr> `x vimtex#imaps#wrap_math("`x", '\xi')
inoremap <buffer> <silent> <expr> `z vimtex#imaps#wrap_math("`z", '\zeta')
inoremap <buffer> <silent> <expr> `w vimtex#imaps#wrap_math("`w", '\omega')
inoremap <buffer> <silent> <expr> `u vimtex#imaps#wrap_math("`u", '\upsilon')
inoremap <buffer> <silent> <expr> `y vimtex#imaps#wrap_math("`y", '\psi')
inoremap <buffer> <silent> <expr> `t vimtex#imaps#wrap_math("`t", '\tau')
inoremap <buffer> <silent> <expr> `s vimtex#imaps#wrap_math("`s", '\sigma')
inoremap <buffer> <silent> <expr> `r vimtex#imaps#wrap_math("`r", '\rho')
inoremap <buffer> <silent> <expr> `q vimtex#imaps#wrap_math("`q", '\theta')
inoremap <buffer> <silent> <expr> `p vimtex#imaps#wrap_math("`p", '\pi')
inoremap <buffer> <silent> <expr> `n vimtex#imaps#wrap_math("`n", '\nu')
inoremap <buffer> <silent> <expr> `m vimtex#imaps#wrap_math("`m", '\mu')
inoremap <buffer> <silent> <expr> `l vimtex#imaps#wrap_math("`l", '\lambda')
inoremap <buffer> <silent> <expr> `k vimtex#imaps#wrap_math("`k", '\kappa')
inoremap <buffer> <silent> <expr> `i vimtex#imaps#wrap_math("`i", '\iota')
inoremap <buffer> <silent> <expr> `h vimtex#imaps#wrap_math("`h", '\eta')
inoremap <buffer> <silent> <expr> `g vimtex#imaps#wrap_math("`g", '\gamma')
inoremap <buffer> <silent> <expr> `f vimtex#imaps#wrap_math("`f", '\phi')
inoremap <buffer> <silent> <expr> `e vimtex#imaps#wrap_math("`e", '\epsilon')
inoremap <buffer> <silent> <expr> `d vimtex#imaps#wrap_math("`d", '\delta')
inoremap <buffer> <silent> <expr> `c vimtex#imaps#wrap_math("`c", '\chi')
inoremap <buffer> <silent> <expr> `b vimtex#imaps#wrap_math("`b", '\beta')
inoremap <buffer> <silent> <expr> `a vimtex#imaps#wrap_math("`a", '\alpha')
inoremap <buffer> <silent> <expr> `jL vimtex#imaps#wrap_math("`jL", '\Rightarrow')
inoremap <buffer> <silent> <expr> `jl vimtex#imaps#wrap_math("`jl", '\rightarrow')
inoremap <buffer> <silent> <expr> `jH vimtex#imaps#wrap_math("`jH", '\Leftarrow')
inoremap <buffer> <silent> <expr> `jh vimtex#imaps#wrap_math("`jh", '\leftarrow')
inoremap <buffer> <silent> <expr> `jK vimtex#imaps#wrap_math("`jK", '\Uparrow')
inoremap <buffer> <silent> <expr> `jk vimtex#imaps#wrap_math("`jk", '\uparrow')
inoremap <buffer> <silent> <expr> `jJ vimtex#imaps#wrap_math("`jJ", '\Downarrow')
inoremap <buffer> <silent> <expr> `jj vimtex#imaps#wrap_math("`jj", '\downarrow')
inoremap <buffer> <silent> <expr> `E vimtex#imaps#wrap_math("`E", '\exists')
inoremap <buffer> <silent> <expr> `A vimtex#imaps#wrap_math("`A", '\forall')
inoremap <buffer> <silent> <expr> `) vimtex#imaps#wrap_math("`)", '\supset')
inoremap <buffer> <silent> <expr> `( vimtex#imaps#wrap_math("`(", '\subset')
inoremap <buffer> <silent> <expr> `] vimtex#imaps#wrap_math("`]", '\supseteq')
inoremap <buffer> <silent> <expr> `[ vimtex#imaps#wrap_math("`[", '\subseteq')
inoremap <buffer> <silent> <expr> `> vimtex#imaps#wrap_math("`>", '\rangle')
inoremap <buffer> <silent> <expr> `< vimtex#imaps#wrap_math("`<", '\langle')
inoremap <buffer> <silent> <expr> `* vimtex#imaps#wrap_math("`*", '\times')
inoremap <buffer> <silent> <expr> `. vimtex#imaps#wrap_math("`.", '\cdot')
inoremap <buffer> <silent> <expr> `\ vimtex#imaps#wrap_math("`\\", '\setminus')
inoremap <buffer> <silent> <expr> `= vimtex#imaps#wrap_math("`=", '\equiv')
inoremap <buffer> <silent> <expr> `8 vimtex#imaps#wrap_math("`8", '\infty')
inoremap <buffer> <silent> <expr> `6 vimtex#imaps#wrap_math("`6", '\partial')
inoremap <buffer> <silent> <expr> `0 vimtex#imaps#wrap_math("`0", '\emptyset')
inoremap <buffer> <silent> `` `
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-P**%f,%-P**\"%f\",%E!\ LaTeX\ %trror:\ %m,%E%f:%l:\ %m,%E!\ %m,%Z<argument>\ %m,%Cl.%l\ %m,%+WLaTeX\ Font\ Warning:\ %.%#line\ %l%.%#,%-CLaTeX\ Font\ Warning:\ %m,%-C(Font)%m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+WLaTeX\ %.%#Warning:\ %m,%+WOverfull\ %\\%\\hbox%.%#\ at\ lines\ %l--%*\\d,%+WUnderfull\ %\\%\\hbox%.%#\ at\ lines\ %l--%*\\d,%+WPackage\ natbib\ Warning:\ %m\ on\ input\ line\ %l%.,%+WPackage\ biblatex\ Warning:\ %m,%-C(biblatex)%.%#in\ t%.%#,%-C(biblatex)%.%#Please\ v%.%#,%-C(biblatex)%.%#LaTeX\ a%.%#,%-C(biblatex)%m,%-Z(babel)%.%#input\ line\ %l.,%-C(babel)%m,%+WPackage\ hyperref\ Warning:\ %m,%-C(hyperref)%.%#on\ input\ line\ %l.,%-C(hyperref)%m,%+WPackage\ scrreprt\ Warning:\ %m,%-C(scrreprt)%m,%+WPackage\ fixltx2e\ Warning:\ %m,%-C(fixltx2e)%m,%+WPackage\ titlesec\ Warning:\ %m,%-C(titlesec)%m,%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\v%(\\v\\\\%(input|include|subfile)\\s*\\{|\\v\\\\%(sub)?%(import|%(input|include)from)\\*?\\{[^\\}]*\\}\\{)
setlocal includeexpr=vimtex#include#expr()
setlocal indentexpr=VimtexIndentExpr()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,[,(,{,),},],&,=item
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=vimtex#complete#omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
set scrollbind
setlocal scrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex,.sty,.cls
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 89 - ((75 * winheight(0) + 38) / 77)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
89
normal! 019|
tabedit ~/bin/vimhelp.txt
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:-,fb:*
setlocal commentstring=
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'text'
setlocal filetype=text
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
set scrollbind
setlocal scrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'text'
setlocal syntax=text
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 38) / 77)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
tabnext 1
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
