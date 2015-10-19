#!/usr/bin/env node

require(__dirname);
require('hoagie')().use(function(req, res) { res.exec('pwd'); }).run([]);
