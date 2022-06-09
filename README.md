# 我的 neovim 配置

* 注意此配置主要在 mac 上使用，在其它系统上会有键位冲突，如有需要请到 `lua/core/mapping.lua` 里修改
* 添加了 neovide 配置，即 GUI, 可在 `lua/core/neovide.lua` 中修改

### 安装依赖

* 安装 lsp
  * `lua/core/global.lua` 中的 `lsp.cmd`需要修改
* 需要下载安装 [tree-sitter](https://github.com/tree-sitter/tree-sitter)
* 需要使用特定字体 [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) ，否则一些特殊字符会显示不正常
* 安装 python 并安装 Python 依赖
  * `python3 -m pip install --user --upgrade pynvim`
* 安装 [Glow](https://github.com/charmbracelet/glow) 浏览 markdown
* 安装中英文切换插件的依赖(仅适用macos) [input-source-switcher](https://github.com/vovkasm/input-source-switcher)

### tip

如果搜索卡顿可以在 `lua/plugins/telescope.lua` 中，将 `preview = false`
