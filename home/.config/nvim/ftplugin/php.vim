colorscheme php
call deoplete#enable()
setlocal includeexpr=substitute(v:fname,'/','./','')

call neomake#configure#automake('w')
imap <expr> <cr> pumvisible() ? "\<plug>(neosnippet_expand_or_jump)" : "\<cr>"

smap <expr> <tab> neosnippet#expandable_or_jumpable() ? "\<plug>(neosnippet_expand_or_jump)" : "\<tab>"
imap <expr> <tab> neosnippet#expandable_or_jumpable() ? "\<plug>(neosnippet_expand_or_jump)" : "\<tab>"

nmap <leader>u :call phpactor#UseAdd()<cr>
nmap <leader>mm :call phpactor#ContextMenu()<cr>
nmap <leader>nn :call phpactor#Navigate()<cr>
nmap <leader>o :call phpactor#GotoDefinition()<cr>
nmap <leader>tt :call phpactor#Transform()<cr>
nmap <leader>cc :call phpactor#ClassNew()<cr>
nmap <silent><leader>ee :call phpactor#ExtractExpression(v:false)<cr>
vmap <silent><leader>ee :<c-u>call phpactor#ExtractExpression(v:true)<cr>
vmap <silent><leader>em :<c-u>call phpactor#ExtractMethod()<cr>

let path = expand('%:p')
if path =~ '/frontends/php'
	set noexpandtab
	set listchars+=tab:\ ⋅
	call matchadd('ColorColumn', '\%121v', 100)
endif
