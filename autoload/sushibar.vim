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
