function! s:relImportFile(filepath)
  let target = getcwd() . '/' . a:filepath
  let current = expand('%:p')
  let target_tokens = split(target, '/')
  let current_tokens = split(current, '/')
  let ntokens = len(current_tokens)

  let bound = min([len(target_tokens), ntokens])
  let same_until = 0
  while same_until < bound
    if target_tokens[same_until] == current_tokens[same_until]
      let same_until += 1
    else
      break
    endif
  endwhile

  let target_remainder = join(target_tokens[same_until:-1], '/')
  let nback = ntokens - same_until - 1
  if nback == 0
    let result = './' . target_remainder
  else
    let relative = repeat('../', nback)
    let result = relative . target_remainder
  endif

  exec 'normal a' . substitute(result, '\(/index\.js$\)\|\(\.js$\)', '', '')
  call feedkeys('a')
endfunction

function! s:relImportFileWithFzf()
  call fzf#run({ 'source' : 'git ls-files --exclude-standard | grep \.js$', 'sink' : function('s:relImportFile'), 'options': '--layout=reverse' })
endfunction

command! RIF call s:relImportFileWithFzf()

inoremap <C-.> <ESC>:RIF<CR>

function! g:ConsoleLogCword()
  let current_word = expand('<cword>')
  if current_word == ''
    return
  endif

  let logmsg = 'console.log('''
        \ . current_word . ''', '
        \ . current_word
        \ . ');'
  execute "normal o"
  call setline('.', logmsg)
  execute "normal =$"
endfunction

nnoremap <buffer><silent> <F8> :call ConsoleLogCword()<CR>
