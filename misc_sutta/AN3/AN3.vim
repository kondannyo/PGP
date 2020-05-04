let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
cnoremap <expr> <Plug>EasyClipCommandModePaste '' . EasyClip#GetDefaultReg()
imap <expr> <Plug>EasyClipInsertModePaste '<Plug>PasteToggle' . EasyClip#GetDefaultReg() . '<Plug>PasteToggle'
inoremap <S-Tab> 
vmap  h
nnoremap <silent>  :TmuxNavigateLeft
omap  h
vmap <NL> j
nnoremap <silent> <NL> :TmuxNavigateDown
omap <NL> j
vmap  k
nnoremap <silent>  :TmuxNavigateUp
omap  k
vmap  l
nnoremap <silent>  :TmuxNavigateRight
omap  l
nmap <silent>  <Plug>EasyClipSwapPasteBackwards
nmap  :set invnumber
nmap <silent>  <Plug>EasyClipSwapPasteForward
nmap  <Plug>(RepeatRedo)
vnoremap  `.``gvP``P
nnoremap <silent>  :TmuxNavigatePrevious
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
nmap \un <Plug>(UnicodeSwapCompleteName)
nnoremap <silent> \pw :call WindowSwap#DeprecatedDo()
nnoremap <silent> \yw :call WindowSwap#DeprecatedMark()
nnoremap <silent> \ww :call WindowSwap#EasyWindowSwap()
snoremap \\ "_c\\
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
map _b :set scb:set cul:set cursorbind:set scb:set cul:set cursorbind:syncbind:sync
map _d 0D
map _O Oj	
map _o ok
map _\ a\\x  
map _r ax  
snoremap ` "_c`
snoremap a "_ca
snoremap b "_cb
nmap cr <Plug>Coerce
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
nmap gw :InteractiveWindow
nnoremap gm m
snoremap h "_ch
snoremap i "_ci
xnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
snoremap j "_cj
onoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
xnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
snoremap k "_ck
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
nnoremap <silent> <Plug>(RepeatDot) :exe repeat#run(v:count)
nnoremap <silent> <Plug>(RepeatUndo) :call repeat#wrap('u',v:count)
nnoremap <silent> <Plug>(RepeatUndoLine) :call repeat#wrap('U',v:count)
nnoremap <silent> <Plug>(RepeatRedo) :call repeat#wrap("\<C-R>",v:count)
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>(ale_hover) :ALEHover
nnoremap <silent> <Plug>(ale_find_references) :ALEFindReferences
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
imap  <Plug>(UnicodeComplete)
imap  <Plug>(DigraphComplete)
cmap w!! w !sudo tee > /dev/null %
iabbr p100 bhikkhusataṁmaṁ
iabbr p99 ekūnasataṁmaṁ
iabbr p98 aṭṭhanavutimaṁ
iabbr p97 sattanavutimaṁ
iabbr p96 chanavutimaṁ
iabbr p95 pañcanavutimaṁ
iabbr p94 catunavutimaṁ
iabbr p93 tenavutimaṁ
iabbr p92 dvanavutimaṁ
iabbr p91 ekanavutimaṁ
iabbr p90 navutimaṁ
iabbr p89 ekūnanavutimaṁ
iabbr p88 aṭṭhāsītimaṁ
iabbr p87 sattāsītimaṁ
iabbr p86 chaḷāsītimaṁ
iabbr p85 pañcāsītimaṁ
iabbr p84 caturāsītimaṁ
iabbr p83 tayāsītimaṁ
iabbr p82 dvāsītimaṁ
iabbr p81 ekāsītimaṁ
iabbr p80 asītimaṁ
iabbr p79 ekūnāsītimaṁ
iabbr p78 aṭṭhasattatimaṁ
iabbr p77 sattasattatimaṁ
iabbr p76 chasattatimaṁ
iabbr p75 pañcasattatimaṁ
iabbr p74 catusattatimaṁ
iabbr p73 tesattatimaṁ
iabbr p72 dvasattatimaṁ
iabbr p71 ekasattatimaṁ
iabbr p70 sattatimaṁ
iabbr p69 ekūnasattatimaṁ
iabbr p68 aṭṭhasaṭṭhīmaṁ
iabbr p67 sattasaṭṭhīmaṁ
iabbr p66 chasaṭṭhīmaṁ
iabbr p65 pañcasaṭṭhīmaṁ
iabbr p64 catusaṭṭhīmaṁ
iabbr p63 tesaṭṭhīmaṁ
iabbr p62 dvāsaṭṭhīmaṁ
iabbr p61 ekasaṭṭhīmaṁ
iabbr p60 saṭṭhīmaṁ
iabbr p59 ekūnasaṭṭhīmaṁ
iabbr p58 aṭṭhapaññāsamaṁ
iabbr p57 sattapaññāsamaṁ
iabbr p56 chapaññāsamaṁ
iabbr p55 pañcapaññāsamaṁ
iabbr p54 catupaññāsamaṁ
iabbr p53 tepaññāsamaṁ
iabbr p52 dvapaññāsamaṁ
iabbr p51 ekapaññāsamaṁ
iabbr p50 paññāsamaṁ
iabbr p49 ekūnapaññāsamaṁ
iabbr p48 aṭṭhacattāḷīsamaṁ
iabbr p47 sattacattāḷīsamaṁ
iabbr p46 chacattāḷīsamaṁ
iabbr p45 pañcacattāḷīsamaṁ
iabbr p44 catucattāḷīsamaṁ
iabbr p43 tecattāḷīsamaṁ
iabbr p42 dvacattāḷīsamaṁ
iabbr p41 ekacattāḷīsamaṁ
iabbr p40 cattāḷīsamaṁ
iabbr p39 ekūnacattāḷīsamaṁ
iabbr p38 aṭṭhattiṁsamaṁ
iabbr p37 sattattiṁsamaṁ
iabbr p36 chattiṁsamaṁ
iabbr p35 pañcattiṁsamaṁ
iabbr p34 catuttiṁsamaṁ
iabbr p33 tettiṁsamaṁ
iabbr p32 dvattiṁsamaṁ
iabbr p31 ekatiṁsamaṁ
iabbr p30 tiṁsamaṁ
iabbr p29 ekūnatiṁsamaṁ
iabbr p28 aṭṭhavīsatimaṁ
iabbr p27 sattavīsatimaṁ
iabbr p26 chabbīsatimaṁ
iabbr p25 pañcavīsatimaṁ
iabbr p24 catuvīsatimaṁ
iabbr p23 tevīsatimaṁ
iabbr p22 dvāvīsatimaṁ
iabbr p21 ekavīsatimaṁ
iabbr p20 vīsatimaṁ
iabbr p19 ekūnavīsatimaṁ
iabbr p18 aṭṭhārasamaṁ
iabbr p17 sattarasamaṁ
iabbr p16 soḷasamaṁ
iabbr p15 pannarasamaṁ
iabbr p14 cuddasamaṁ
iabbr p13 terasamaṁ
iabbr p12 dvādasamaṁ
iabbr p11 ekādasamaṁ
iabbr p10 dasamaṁ
iabbr p9 navamaṁ
iabbr p8 aṭṭhamaṁ
iabbr p7 sattamaṁ
iabbr p6 chaṭṭhaṁ
iabbr p5 pañcamaṁ
iabbr p4 catutthaṁ
iabbr p3 tatiyaṁ
iabbr p2 dutiyaṁ
iabbr p1 paṭhamaṁ
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
set runtimepath=~/.vim,~/.vim/plugged/nerdtree/,~/.vim/plugged/python-mode/,~/.vim/plugged/vim-texlog/,~/.vim/plugged/vimtex/,~/.vim/plugged/vim-dispatch/,~/.vim/plugged/vim-surround/,~/.vim/plugged/vim-repeat/,~/.vim/plugged/vim-easyclip/,~/.vim/plugged/asyncrun.vim/,~/.vim/plugged/ale/,~/.vim/plugged/vim-windowswap/,~/.vim/plugged/vim-abolish/,~/.vim/plugged/winteract.vim/,~/.vim/plugged/w3m.vim/,~/.vim/plugged/linediff.vim/,~/.vim/plugged/vim-tmux-navigator/,~/.vim/plugged/unicode.vim/,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/plugged/python-mode/after,~/.vim/plugged/vimtex/after,~/.vim/after
set scrolloff=10
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [U+%04B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set timeoutlen=2000
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /media/data/texfiles/sutta/AN3
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/bin/vimhelp.txt
badd +1 AN3_pali.txt
badd +1 AN3_eng.txt
badd +1 sensetable.txt
badd +26 internalsense.txt
badd +18 extsense.txt
badd +1 senseverbs.txt
badd +425 AN3_pali_raw.txt
badd +4598 ../AN4/AN4_pali.txt
badd +1 ~/data/Suttapitaka-Palitxt/ANPali.txt
badd +1 ~/.vimrc
badd +0 ~/data/vimhelp.txt
argglobal
silent! argdel *
argadd AN3_pali.txt
set stal=2
edit AN3_eng.txt
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 90) / 180)
exe 'vert 2resize ' . ((&columns * 90 + 90) / 180)
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
set cursorbind
setlocal cursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
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
set foldlevel=10
setlocal foldlevel=0
set foldmarker={,}
setlocal foldmarker={,}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
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
setlocal nonumber
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
let s:l = 2433 - ((14 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2433
normal! 0
wincmd w
argglobal
edit AN3_pali.txt
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
set cursorbind
setlocal cursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
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
set foldlevel=10
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
setlocal iminsert=2
setlocal imsearch=2
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
setlocal nonumber
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
let s:l = 2433 - ((14 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2433
normal! 03|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 90) / 180)
exe 'vert 2resize ' . ((&columns * 90 + 90) / 180)
tabedit ~/data/vimhelp.txt
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
set cursorbind
setlocal cursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
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
set foldlevel=10
setlocal foldlevel=10
set foldmarker={,}
setlocal foldmarker={,}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
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
setlocal nonumber
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
let s:l = 112 - ((29 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
112
normal! 0
tabedit ~/.vimrc
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
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
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
set cursorbind
setlocal cursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=10
setlocal foldlevel=10
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
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
setlocal nonumber
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
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=78
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 228 - ((10 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
228
normal! 0
tabedit extsense.txt
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 29 + 90) / 180)
exe 'vert 2resize ' . ((&columns * 28 + 90) / 180)
exe 'vert 3resize ' . ((&columns * 121 + 90) / 180)
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
set cursorbind
setlocal cursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
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
set foldlevel=10
setlocal foldlevel=0
set foldmarker={,}
setlocal foldmarker={,}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
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
setlocal nonumber
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
let s:l = 18 - ((11 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
wincmd w
argglobal
edit internalsense.txt
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
set cursorbind
setlocal cursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
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
set foldlevel=10
setlocal foldlevel=0
set foldmarker={,}
setlocal foldmarker={,}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
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
setlocal nonumber
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
let s:l = 18 - ((9 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
wincmd w
argglobal
edit senseverbs.txt
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
set cursorbind
setlocal cursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
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
set foldlevel=10
setlocal foldlevel=0
set foldmarker={,}
setlocal foldmarker={,}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
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
setlocal nonumber
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
let s:l = 18 - ((17 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 29 + 90) / 180)
exe 'vert 2resize ' . ((&columns * 28 + 90) / 180)
exe 'vert 3resize ' . ((&columns * 121 + 90) / 180)
tabedit ~/data/Suttapitaka-Palitxt/ANPali.txt
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
set cursorbind
setlocal cursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
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
set foldlevel=10
setlocal foldlevel=10
set foldmarker={,}
setlocal foldmarker={,}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
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
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
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
let s:l = 2881 - ((11 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2881
normal! 0
tabedit sensetable.txt
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
set cursorbind
setlocal cursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
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
set foldlevel=10
setlocal foldlevel=0
set foldmarker={,}
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
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
setlocal nonumber
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
let s:l = 5 - ((4 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 026|
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
