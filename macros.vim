"=============================================================================
" Macros
"=============================================================================
"
" Tip: press combination CtrlV followed by key ex.Enter. in insert mode.
" This will insert Enter code represented by ^M sign
"=============================================================================
" Line of equals
let @-='O=x77p'
" JS add // @flow at the start of js file
let @f='ggO// @flowxx'
" JS oadd js function documentation template
let @d=':JsDoc'
" JS convert require to import
let @i='0ceimport/=cf(from /)x0j'
" indent HTML attributes
let @w='2f"a'
let @g='*ggnf''lgfggn<CR>'
let @c='iconsole.log('
let @s='iJSON.stringify('
" convert - muso import {... }  from models; to import DB from models;
let @m='gg/models''0f{ca{modelsG?import oconst pa = models;0'
let @l='gg}}}?importoimport log from ''../../../decorators/log'';0'
