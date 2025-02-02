-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  {
    {
      'CopilotC-Nvim/CopilotChat.nvim',
      branch = 'main',
      dependencies = {
        { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
        { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
      },
      build = 'make tiktoken', -- Only on MacOS or Linux
      opts = {
        debug = false, -- Enable debugging
        model = 'claude-3.5-sonnet',
        chat_autocomplete = false,
        window = {
          -- layout = 'replace',
        },
        system_prompt = 'You are Copilot, an expert chat assistant operating in Neovim. Do your best to assist the user in any scenario. The user is an expert developer, therefore, be as concise as possible without restating the obvious. By default, provide only relevant code snippets when asked to write/edit code. However, if the user asks for a complete implementation, write out the entirety of the relevant function or class.',
        -- See Configuration section for rest
      },
      -- See Commands section for default commands if you want to lazy load on them
    },
    { 'nvim-java/nvim-java' },
  },
}
