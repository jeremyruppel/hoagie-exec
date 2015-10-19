# hoagie-exec

Make your hoagie program exec to another process

# Install

```
$ npm install hoagie-exec --save
```

# Usage

Simply `require('hoagie-exec')` in your program and the hoagie response stream will have an `exec` method. This method will replace the current process with the command you specify, so you can exit to top, pagers, whatever.

Internally, this is just node-kexec. h/t to @jprichardson for literally all the work.

``` js
var hoagie = require('hoagie');

require('hoagie-exec');

var app = hoagie();

app.use('top', function(req, res) {
	res.exec('top');
});

app.run([]);
```

[1]: https://github.com/jprichardson/node-kexec
