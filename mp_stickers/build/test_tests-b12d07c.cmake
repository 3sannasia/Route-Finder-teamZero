add_test( [==[A basic StickerSheet works]==] /workspaces/cs225/mp_stickers/build/test [==[A basic StickerSheet works]==]  )
set_tests_properties( [==[A basic StickerSheet works]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet::changeMaxStickers() does not discard stickers when resized larger]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet::changeMaxStickers() does not discard stickers when resized larger]==]  )
set_tests_properties( [==[StickerSheet::changeMaxStickers() does not discard stickers when resized larger]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet::changeMaxStickers() does not discard original stickers when resized smaller]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet::changeMaxStickers() does not discard original stickers when resized smaller]==]  )
set_tests_properties( [==[StickerSheet::changeMaxStickers() does not discard original stickers when resized smaller]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet::changeMaxStickers() can increase the number of stickers on an image]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet::changeMaxStickers() can increase the number of stickers on an image]==]  )
set_tests_properties( [==[StickerSheet::changeMaxStickers() can increase the number of stickers on an image]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet::changeMaxStickers() discards stickers beyond the end of a smaller StickerSheet]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet::changeMaxStickers() discards stickers beyond the end of a smaller StickerSheet]==]  )
set_tests_properties( [==[StickerSheet::changeMaxStickers() discards stickers beyond the end of a smaller StickerSheet]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet::removeSticker() can remove the last sticker]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet::removeSticker() can remove the last sticker]==]  )
set_tests_properties( [==[StickerSheet::removeSticker() can remove the last sticker]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet::removeSticker() can remove the first sticker]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet::removeSticker() can remove the first sticker]==]  )
set_tests_properties( [==[StickerSheet::removeSticker() can remove the first sticker]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet::removeSticker() can remove all stickers]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet::removeSticker() can remove all stickers]==]  )
set_tests_properties( [==[StickerSheet::removeSticker() can remove all stickers]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet::getSticker() returns the sticker]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet::getSticker() returns the sticker]==]  )
set_tests_properties( [==[StickerSheet::getSticker() returns the sticker]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet::getSticker() returns NULL for a non-existant sticker]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet::getSticker() returns NULL for a non-existant sticker]==]  )
set_tests_properties( [==[StickerSheet::getSticker() returns NULL for a non-existant sticker]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet::getSticker() returns NULL for a removed sticker]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet::getSticker() returns NULL for a removed sticker]==]  )
set_tests_properties( [==[StickerSheet::getSticker() returns NULL for a removed sticker]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet::translate() translates a sticker's location]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet::translate() translates a sticker's location]==]  )
set_tests_properties( [==[StickerSheet::translate() translates a sticker's location]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet::translate() returns false for a non-existant sticker]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet::translate() returns false for a non-existant sticker]==]  )
set_tests_properties( [==[StickerSheet::translate() returns false for a non-existant sticker]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[A complex StickerSheet is correct]==] /workspaces/cs225/mp_stickers/build/test [==[A complex StickerSheet is correct]==]  )
set_tests_properties( [==[A complex StickerSheet is correct]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet's copy constructor makes an independent copy]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet's copy constructor makes an independent copy]==]  )
set_tests_properties( [==[StickerSheet's copy constructor makes an independent copy]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
add_test( [==[StickerSheet's assignment operator makes an independent copy]==] /workspaces/cs225/mp_stickers/build/test [==[StickerSheet's assignment operator makes an independent copy]==]  )
set_tests_properties( [==[StickerSheet's assignment operator makes an independent copy]==] PROPERTIES WORKING_DIRECTORY /workspaces/cs225/mp_stickers/build)
set( test_TESTS [==[A basic StickerSheet works]==] [==[StickerSheet::changeMaxStickers() does not discard stickers when resized larger]==] [==[StickerSheet::changeMaxStickers() does not discard original stickers when resized smaller]==] [==[StickerSheet::changeMaxStickers() can increase the number of stickers on an image]==] [==[StickerSheet::changeMaxStickers() discards stickers beyond the end of a smaller StickerSheet]==] [==[StickerSheet::removeSticker() can remove the last sticker]==] [==[StickerSheet::removeSticker() can remove the first sticker]==] [==[StickerSheet::removeSticker() can remove all stickers]==] [==[StickerSheet::getSticker() returns the sticker]==] [==[StickerSheet::getSticker() returns NULL for a non-existant sticker]==] [==[StickerSheet::getSticker() returns NULL for a removed sticker]==] [==[StickerSheet::translate() translates a sticker's location]==] [==[StickerSheet::translate() returns false for a non-existant sticker]==] [==[A complex StickerSheet is correct]==] [==[StickerSheet's copy constructor makes an independent copy]==] [==[StickerSheet's assignment operator makes an independent copy]==])
