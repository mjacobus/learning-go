autocmd FileType go nnoremap <buffer> <leader>T <esc>:call RunTestFile()<cr>
autocmd FileType go nnoremap <buffer> <leader>t <esc>:call RunTestFileFilteredByLine()<cr>
autocmd FileType go nnoremap <buffer> <leader>j <esc>:call RunTestFileFilteredByLine()<cr>
autocmd FileType go nnoremap <buffer> <leader>at <esc>:call RunAllTests()<cr>
autocmd FileType go nnoremap  <leader>x <esc>:terminal time go run %<cr>
autocmd FileType go nnoremap  <leader>cs <esc>:terminal time gofmt -w %<cr>

function! RunTestFileFilteredByLine()
  let command = "bundle exec run_test " . expand('%') . " --line=" . line(".")
  call ClearEchoAndExecute(command)
endfunction

function! RunTestFile()
  let command = "bundle exec run_test " . expand('%')
  call ClearEchoAndExecute(command)
endfunction

function! RunAllTests()
  let command = "bundle exec run_test " . expand('%') . " --all"
  call ClearEchoAndExecute(command)
endfunction

function! ClearEchoAndExecute(command)
  let cmd = "! clear && echo '" . a:command . "' && " . a:command

  if has('nvim')
    let cmd = "terminal " . a:command
  endif

  execute cmd
endfunction
