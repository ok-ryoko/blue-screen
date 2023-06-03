local p = require("blue-screen").palette()

return {
  normal = {
    a = { fg = p.blue15, bg = p.blue75 },
    b = { fg = p.blue75, bg = p.blue15 },
    c = { fg = p.blue75, bg = p.blue15 },
  }
}
