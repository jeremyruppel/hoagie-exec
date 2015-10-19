# hoagie-exec

Make your hoagie program exec to another process

[![Build Status](https://travis-ci.org/jeremyruppel/hoagie-exec.svg?branch=v1.0.1)](https://travis-ci.org/jeremyruppel/hoagie-exec)

# Install

```
$ npm install hoagie-exec --save
```

# Usage

Simply `require('hoagie-exec')` in your program and the hoagie response stream will have an `exec` method. This method will replace the current process with the command you specify, so you can exit to top, pagers, whatever.

Internally, this is just [node-kexec][1]. h/t to [@jprichardson][2] for literally all the work.

``` js
var hoagie = require('hoagie');

require('hoagie-exec');

var app = hoagie();

app.use('top', function(req, res) {
	res.exec('top');
});

app.run([]);
```

## License

[ISC License](https://github.com/jeremyruppel/hoagie-exec/blob/master/LICENSE)

[1]: https://github.com/jprichardson/node-kexec
[2]: https://github.com/jprichardson
