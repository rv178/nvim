local rows = {
    [[5b606615~5b606624282e46~cfd7e024282e47~22272d7:]],
    [[282c3104~282c31b7bec835~deeaf2b7bec837~deeaf2eaf0f668~cde5edeaf0f66:~cde5edc9d3dd9;~deebf2c9d3dd9<~434c53<?]],
    [[7f8d9602~c0d4e07f8d9604~c0d4e0cee4ec35~b8d1dfcee4ec37~b8d1dfc8dee968~a3c0d3c8dee96:~a3c0d3bedfe99;~afcfdebedfe99=~afcfde869daa<>~9dbacf869daa<?]],
    [[57636c/1~a2b9c757636c/3~a2b9c7abc9da24~b4cfddabc9da26~b4cfdda2bfd157~a8c5d5a2bfd15:~a2bed0a2bfd18<~a2bed0a1bed1;=~9fbbcea1bed1;?~9fbbce9ab9ce>@~9bbacf9ab9ce>B~9bbacf45505dAC~8299af45505dAD~4f5a63DG~768b97GJ]],
    [[313841.0~9ab3c6313841.2~9ab3c6a8c3d513~a0bbcea8c3d515~a0bbcea7c2d348~a0bbceb8d3e07;~a0bbceb1cfdd:<~a0bbcdb1cfdd:>~a0bbcda6c3d4=?~9fbbcea6c3d4=A~9fbbce9dbcd0@B~9cbacf9dbcd0@D~9cbacf97abc5CE~a1bacf97abc5CG~a1bacfb0cbdbFH~bedfe8b0cbdbFJ~bedfe8b3d3deIK~bcdde7b3d3deIL~474d60LO]],
    [[1f2228)+~7581921f2228)-~758192becfdb,.~bfd8e3becfdb,0~bfd8e39baab1/1~a8a3be9baab1/3~a8a3be383e4224~aba9c3383e4226~aba9c38e95ad57~a5a0bd8e95ad59~a5a0bda0b9cc8:~a19ebca0b9cc8<~a19ebca0bace;=~a4b6cca0bace;?~a4b6cc9fbbce>@~aac4d59fbbce>B~aac4d5a0bbceAC~a1bccea0bbceAF~a0bbcea0bbceDI~a5c1d3a0bbceGK~a5c1d39dbbcfJL~a3bbd09dbbcfJN~a3bbd0b6d6e2MO~9eb0c9b6d6e2MQ~9eb0c9badbe5PR~9eb3ccbadbe5PT~9eb3ccaeceddSU~97a2c0aeceddSW~97a2c0838dabVX~969cbc838dabVY~39404eY\]],
    [[262832(*~758196262832(,~758196a6b4c8+-~a6a5c0a6b4c8+/~a6a5c0acc1d3.0~a6a1bcacc1d3.2~a6a1bca69bb913~a59bb8a69bb916~a69ab9a69bb948~a69ab9a59ab979~a59ab9a59ab97;~a59ab9a299b8:<~a39cbaa299b8:>~a39cbaa099b8=?~b3bfd3a099b8=A~b3bfd3a5abc4@B~bed2e0a5abc4@D~bed2e0c3dbe6CE~c4c9dac3dbe6CG~c4c9dac7dae5FH~adafc7c7dae5FJ~adafc7a7c3d4IK~9fafc6a7c3d4IM~9fafc69fa6c1LN~9e9bb89fa6c1LP~9e9bb89a9cbbOQ~a0a9c39a9cbbOS~a0a9c3969abaRT~a0b1ca969abaRV~a0b1ca9699baUW~a7bcd29699baUY~a7bcd299a2c0XZ~a8bcd199a2c0X\~a8bcd189a1b1[]~a1b2ca89a1b1[^~657781^a~a1bac8ae~a1bac82d333adf~929aba2d333adg~4a5366gj]],
    [[1e2129$(~1e2129393f4a')~93a6be393f4a'+~93a6beb5c6d6*,~9c9bb9b5c6d6*.~9c9bb9a3acbf-/~a69cbaa3acbf-1~a69cbaa3a4bf02~a59bb8a3a4bf04~a59bb8a69bb935~9593b3a69bb937~9593b3a099b768~7d87aba099b76:~7d87ab9492b39;~697ca19492b39=~697ca1a59ab8<>~888cb0a59ab8<@~888cb0a69ab9?A~a199b7a69ab9?C~a199b7a9a9c4BD~a49ab8a9a9c4BF~a49ab8a29ebcEG~9a95b6a29ebcEI~9a95b69c96b7HJ~9091b29c96b7HL~9091b29b97b6KM~7682a59b97b6KO~7682a59795b4NP~66799d9795b4NR~66799d888eafQS~5e759b888eafQU~5e759b8289aaTV~566f958289aaTX~566f959496b5WY~6f81a69496b5W[~6f81a69095b7Z\~687ea39095b7Z^~687ea38d94b6]_~657ba08d94b6]a~657ba08c94b6`b~6a7ea38c94b6`d~6a7ea38792b5ce~687fa48792b5cg~687fa4959cbbfh~7689ae959cbbfj~7689aeaac2d6ik~9399b9aac2d6im~9399b9929cbcln~949fbe929cbclp~949fbe838dadoq~8f99ba838dador~48546aru]],
    [[21252d#'~21252d74819b&(~39415074819b&*~394150818bae)+~566078818bae)-~5660787d89ad,.~6c7a9b7d89ad,0~6c7a9b828bae/1~6e80a5828bae/3~6e80a58189ad24~6e80a48189ad26~6e80a47684aa57~62789d7684aa59~62789d62789e8:~4d607e62789e8<~4d607e567095;=~323b4a567095;?~323b4a576786>@~191c22576786>B~191c227984a8AC~2e35417984a8AE~2e35418c8fb1DF~4a5b778c8fb1DH~4a5b77838aaeGI~576f94838aaeGK~576f946f7fa4JL~61769c6f7fa4JN~61769c7482a7MO~5f75997482a7MQ~5f75997683a8PR~4a5d7b7683a8PT~4a5d7b566c8fSU~2d333d566c8fSW~2d333d353f51VX~5b5f62353f51VZ~5b5f6242556fY[~2e323642556fY]~2e3236557096\^~333f50557096\`~333f50637ba1_a~4c6688637ba1_c~4c66887789afbd~506c917789afbf~506c918591b5eg~59749a8591b5ei~59749a9599b9hj~6a82a99599b9hl~6a82a99599bakm~6c83aa9599bako~6c83aa8994b7np~637ea58994b7nr~637ea56d86acqs~5d769a6d86acqu~5d769a58769ctv~42536d58769ctx~42536d3c506awy~313a4b3c506awz~1e2129z}]],
    [[171a1f%(~242730(+~222831+.~222731.1~24293314~181a2047~34373b7:~abb7cc:=~768490=@~15171c@C~232630CG~232630232630FH~778695232630FJ~77869522262fIK~2f384022262fIL~121418LP~121418728391OQ~6b799c728391OS~6b799c90a9c4RT~54627f90a9c4RU~404c57VY~1e222aY\~1f232b\_~1f232b_b~1f232bbf~1f232b20232ceg~53646c20232ceh~1f242dhk~20232ckn~14161bnq]],
    [[646e81')~16191f646e81'+~16191f373e4b*,~121419373e4b*-~75789504~757895868cae35~1b1f28868cae36~191d2569~56627e:=~323b49=@~252d3aAD~404c61FH~161b22404c61FI~71889dIL~1e232cNQ~1e242eQT]],
}

local header = {
    type = "text",
    val = {
        [[              ▄▄▄             ]],
        [[             ▄▄▄▄▄            ]],
        [[             ▄▄▄▄▄            ]],
        [[            ▄▄▄▄▄▄▄▄▄         ]],
        [[           ▄▄▄▄▄▄▄▄▄▄▄        ]],
        [[      ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄       ]],
        [[     ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄   ]],
        [[ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ]],
        [[▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄]],
        [[  ▀▀▀▀▀▀▄▄▄▀▀▄▄▀▄▄ ▄▀▀▀▀▄▀▀▀  ]],
        [[    ▄▄   ▀▄▄ ▀▀ ▀  ▄▀  ▀▀     ]],
    },
    opts = { position = "center", hl = {} },
}

local backgrounds = {
    ["1f2228"] = true,
    ["262832"] = true,
    ["313841"] = true,
    ["404c61"] = true,
    ["57636c"] = true,
    ["646e81"] = true,
    ["7f8d96"] = true
}
for i, row in ipairs(rows) do
    local highlights = {}
    header.opts.hl[i] = highlights
    for token in row:gmatch("[^~]+") do
        local color = token:sub(1, -3)
        local start, finish = token:byte(-2, -1)
        local name = "T2A" .. color
        local style = { [backgrounds[color] and "bg" or "fg"] = "#" .. color:sub(1, 6) }
        if #color > 6 then style.bg = "#" .. color:sub(7) end
        vim.api.nvim_set_hl(0, name, style)
        highlights[#highlights + 1] = { name, start - 35, finish - 35 }
    end
end

return header
