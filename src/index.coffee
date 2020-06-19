#!/usr/bin/env coffee
assert = require('assert').strict
Api = require './api'

{TUSHARE_TOKEN} = process.env
assert(
  TUSHARE_TOKEN
  """缺少令牌
请设置环境变量 TUSHARE_TOKEN
访问 https://tushare.pro/user/token 查询令牌"""
)

module.exports = new Api(TUSHARE_TOKEN)
