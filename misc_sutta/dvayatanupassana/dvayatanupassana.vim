let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
cnoremap <expr> <Plug>EasyClipCommandModePaste '' . EasyClip#GetDefaultReg()
imap <expr> <Plug>EasyClipInsertModePaste '<Plug>PasteToggle' . EasyClip#GetDefaultReg() . '<Plug>PasteToggle'
nnoremap <silent>  :call NumberToggle()
nmap  :set invnumber
nmap <silent>  <Plug>EasyClipSwapPasteForward
nmap  <Plug>(RepeatRedo)
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
map _f :set foldmethod=marker:set foldmarker={,}
map _b :set scb!:set scb!
map _L :py3file ~/bin/palilookup2.py
map _\ a\\x  
map _r ax  
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
snoremap j "_cj
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
xnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
onoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
snoremap k "_ck
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
xnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
onoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
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
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
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
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set laststatus=2
set pastetoggle=<Plug>PasteToggle
set runtimepath=~/.vim,~/.vim/plugged/nerdtree/,~/.vim/plugged/python-mode/,~/.vim/plugged/vim-numbertoggle/,~/.vim/plugged/vim-texlog/,~/.vim/plugged/vimtex/,~/.vim/plugged/vim-dispatch/,~/.vim/plugged/vim-surround/,~/.vim/plugged/vim-repeat/,~/.vim/plugged/vim-easyclip/,~/.vim/plugged/asyncrun.vim/,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim80,/usr/local/share/vim/vimfiles/after,~/.vim/plugged/python-mode/after,~/.vim/plugged/vimtex/after,~/.vim/after
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [U+%04B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set timeoutlen=2000
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /run/media/kondanno/KONDANNO/texfiles/sutta/dvayatanupassana
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 dvayatanupassana_eng.txt
badd +1 ~/bin/vimhelp.txt
badd +0 dvayatanupassana_pali.txt
argglobal
silent! argdel *
$argadd dvayatanupassana_eng.txt
edit dvayatanupassana_pali.txt
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 70 + 70) / 141)
exe 'vert 2resize ' . ((&columns * 70 + 70) / 141)
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
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
setlocal imsearch=-1
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
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
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
setlocal noscrollbind
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
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('dvayatanupassana_eng.txt') | buffer dvayatanupassana_eng.txt | else | edit dvayatanupassana_eng.txt | endif
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
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
setlocal imsearch=-1
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
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
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
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
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
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 70 + 70) / 141)
exe 'vert 2resize ' . ((&columns * 70 + 70) / 141)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
