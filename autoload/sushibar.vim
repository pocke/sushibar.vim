scriptencoding utf-8

let s:sushi_count = 0
let s:sushis =
  \ reverse(["🍣       ", " 🍣      ", "  🍣     ", "   🍣    ", "    🍣   ", "     🍣  ", "      🍣 ", "       🍣"])

function! sushibar#sushibar() abort
  if s:sushi_count == 8
    let s:sushi_count = 0
  endif

  let ret = repeat(s:sushis[s:sushi_count], 8)

  let s:sushi_count += 1
  return ret
endfunction

function! sushibar#enable() abort
  let s:statusline = &statusline
  let s:laststatus = &laststatus
  set statusline=%!sushibar#sushibar()
  set laststatus=2
endfunction

function! sushibar#disable() abort
  let &statusline = s:statusline
  let &laststatus = s:laststatus
  unlet s:statusline
  unlet s:laststatus
endfunction

function! sushibar#toggle() abort
  if has_key(s:, 'statusline')
    call sushibar#disable()
  else
    call sushibar#enable()
  endif
endfunction
