local p = require("blue-screen").palette()

return {
  normal = {
    a = { fg = p.blue1, bg = p.blue6 },
    b = { fg = p.blue6, bg = p.blue1 },
    c = { fg = p.blue6, bg = p.blue1 },
  },
  inactive = {
    a = { fg = p.blue0, bg = p.blue4 },
    b = { fg = p.blue4, bg = p.blue0 },
    c = { fg = p.blue4, bg = p.blue0 },
  },
}
