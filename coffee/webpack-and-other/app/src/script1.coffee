s2 = require('./script2')
cube  = (x) -> s2.square(x) * x
module.exports = { cube }