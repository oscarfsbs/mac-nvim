local h1 =
  [[██╗███████╗    ██╗   ██╗ ██████╗ ██╗   ██╗    ██████╗  ██████╗ ███╗   ██╗████████╗                  
██║██╔════╝    ╚██╗ ██╔╝██╔═══██╗██║   ██║    ██╔══██╗██╔═══██╗████╗  ██║╚══██╔══╝                  
██║█████╗       ╚████╔╝ ██║   ██║██║   ██║    ██║  ██║██║   ██║██╔██╗ ██║   ██║                     
██║██╔══╝        ╚██╔╝  ██║   ██║██║   ██║    ██║  ██║██║   ██║██║╚██╗██║   ██║                     
██║██║            ██║   ╚██████╔╝╚██████╔╝    ██████╔╝╚██████╔╝██║ ╚████║   ██║                     
╚═╝╚═╝            ╚═╝    ╚═════╝  ╚═════╝     ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝                     
                                                                                                    
██████╗ ██████╗ ███████╗ █████╗ ████████╗██╗  ██╗███████╗       ██╗   ██╗ ██████╗ ██╗   ██╗         
██╔══██╗██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██║  ██║██╔════╝       ╚██╗ ██╔╝██╔═══██╗██║   ██║         
██████╔╝██████╔╝█████╗  ███████║   ██║   ███████║█████╗          ╚████╔╝ ██║   ██║██║   ██║         
██╔══██╗██╔══██╗██╔══╝  ██╔══██║   ██║   ██╔══██║██╔══╝           ╚██╔╝  ██║   ██║██║   ██║         
██████╔╝██║  ██║███████╗██║  ██║   ██║   ██║  ██║███████╗▄█╗       ██║   ╚██████╔╝╚██████╔╝         
╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝       ╚═╝    ╚═════╝  ╚═════╝          
                                                                                                    
██████╗  ██████╗ ███╗   ██╗████████╗    ███████╗██╗   ██╗ ██████╗ ██████╗███████╗███████╗██████╗    
██╔══██╗██╔═══██╗████╗  ██║╚══██╔══╝    ██╔════╝██║   ██║██╔════╝██╔════╝██╔════╝██╔════╝██╔══██╗   
██║  ██║██║   ██║██╔██╗ ██║   ██║       ███████╗██║   ██║██║     ██║     █████╗  █████╗  ██║  ██║   
██║  ██║██║   ██║██║╚██╗██║   ██║       ╚════██║██║   ██║██║     ██║     ██╔══╝  ██╔══╝  ██║  ██║   
██████╔╝╚██████╔╝██║ ╚████║   ██║       ███████║╚██████╔╝╚██████╗╚██████╗███████╗███████╗██████╔╝██╗
╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝       ╚══════╝ ╚═════╝  ╚═════╝ ╚═════╝╚══════╝╚══════╝╚═════╝ ╚═╝]]

local h2 =
  [[███████╗███╗   ██╗     ██╗ ██████╗ ██╗   ██╗    ████████╗██╗  ██╗███████╗    ███╗   ███╗███████╗███╗   ██╗████████╗
██╔════╝████╗  ██║     ██║██╔═══██╗╚██╗ ██╔╝    ╚══██╔══╝██║  ██║██╔════╝    ████╗ ████║██╔════╝████╗  ██║╚══██╔══╝
█████╗  ██╔██╗ ██║     ██║██║   ██║ ╚████╔╝        ██║   ███████║█████╗      ██╔████╔██║█████╗  ██╔██╗ ██║   ██║   
██╔══╝  ██║╚██╗██║██   ██║██║   ██║  ╚██╔╝         ██║   ██╔══██║██╔══╝      ██║╚██╔╝██║██╔══╝  ██║╚██╗██║   ██║   
███████╗██║ ╚████║╚█████╔╝╚██████╔╝   ██║          ██║   ██║  ██║███████╗    ██║ ╚═╝ ██║███████╗██║ ╚████║   ██║██╗
╚══════╝╚═╝  ╚═══╝ ╚════╝  ╚═════╝    ╚═╝          ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝╚═╝]]

-- TODO : Add cow?

return {
  'nvimdev/dashboard-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VimEnter',
  config = function()
    vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#c678dd' })

    require('dashboard').setup {
      --config = { header = vim.split(header, "\n") },
      config = {
        header = vim.split(string.rep('\n', 2) .. h1, '\n'),
        shortcut = {},
        footer = {},
      },
    }
  end,
}
