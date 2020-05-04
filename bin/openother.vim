" Vertical Split Buffer Function

nnoremap <silent> <leader>oo :call OpenOther()<CR>
let g:parallel_suttas = 0
function! OpenOther()
let bname = bufname( "%" )
	if bname =~ '_sc_pali'
		let other = substitute( bname, '_sc_pali', '_sc_engl', '')
		exe "set scb"	  
		exe "set crb"	  
		let curLine = line( "." )
		exe "vsplit" | exe "edit +" . curLine . " " . other 
		exe "syncbind"
elseif bname =~ '_sc_engl'
		let other = substitute( bname, '_sc_engl', '_sc_pali', '')
		exe "set scb"	  
		exe "set crb"	  
		let curLine = line( "." )
		exe "rightbelow vsplit" | exe "edit +" . curLine . " " . other
		exe "syncbind"
else
		echo 'Not an OpenOther() recognized file'
endif

let g:parallel_suttas = 1

endfunction

function! AlreadyParallel(newfile)
	if g:parallel_suttas == 1
		echo a:newfile
		let curTab = tabpagenr()
		let curNum = winnr()
		echo 'tab: ' . curTab. ' total wins: ' . tabpagewinnr(curTab, '$')
	endif
endfunction

autocmd BufReadPre *_sc_* call AlreadyParallel(expand('<afile>'))

