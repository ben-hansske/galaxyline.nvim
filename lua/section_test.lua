-- section setup
-- test data
-- TODO: the order of component
local left,right = {},{}
local colors = {
  yellow = '#fabd2f',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#afd700',
  orange = '#FF8800',
  purple = '#5d4d7a',
  magenta = '#d16d9e',
  grey = '#c0c0c0',
}

left[1] = {
  ViMode = {
    provider = 'ShowVimMode',
    separator = ' ',
    separator_highlight = {colors.yellow,colors.darkblue},
    highlight = {colors.cyan,colors.yellow},
    aliasby = {n = 'Normal',i = 'Insert',c = 'Command'}
  },
}
left[2] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = function()
      if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
      end
      return false
    end,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color(),colors.darkblue},
  },
}
left[3] = {
  FileName = {
    provider = 'FileName',
    condition = function()
      if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
      end
      return false
    end,
    separator = '',
    separator_highlight = {colors.purple,colors.darkblue},
    highlight = {colors.magenta,colors.darkblue}
  }
}
left[4] = {
  DiagnosticOk = {
    provider = 'DiagnosticOk',
    condition = function()
      if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
      end
      return false
    end,
    icon = ' ',
    highlight = {colors.green,colors.purple}
  }
}
left[5] = {
  FileSize = {
    provider = 'FileSize',
    condition = function()
      if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
      end
      return false
    end,
    highlight = {colors.green,colors.purple},
    separator = '',
    separator_highlight = {colors.purple,colors.darkblue}
  }
}
left[6] = {
  GitIcon = {
    provider = function() return '  ' end,
    highlight = {colors.orange,colors.darkblue},
  }
}
left[7] = {
  GitBranch = {
    provider = 'GitBranch',
    highlight = {colors.grey,colors.darkblue},
  }
}
left[8] = {
  DiffAdd = {
    provider = 'DiffAdd',
    icon = ' ',
    highlight = {colors.green,colors.darkblue},
  }
}
left[9] = {
  DiffModified = {
    provider = 'DiffModified',
    icon = ' ',
    highlight = {colors.orange,colors.darkblue},
  }
}
left[10] = {
  DiffRemove = {
    provider = 'DiffRemove',
    icon = ' ',
    highlight = {colors.red,colors.darkblue},
  }
}
left[11] = {
  LeftEnd = {
    provider = function() return '' end,
    separator = '',
    separator_highlight = {colors.purple,colors.purple},
    highlight = {colors.purple,colors.darkblue}
  }
}
right[1]= {
  FileFormat = {
    provider = 'FileFormat',
    separator = '',
    separator_highlight = {colors.purple,colors.purple},
    highlight = {colors.grey,colors.purple},
  }
}
right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' | ',
    separator_highlight = {colors.darkblue,colors.purple},
    highlight = {colors.grey,colors.purple},
  },
}
right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = '',
    separator_highlight = {colors.darkblue,colors.purple},
    highlight = {colors.grey,colors.darkblue},
  }
}
right[4] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {colors.yellow,colors.purple},
  }
}

return {
  left,right
}