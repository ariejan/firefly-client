# FireFly Client

FireFly is a simple URL shortener for personal use. This is the client to be used in conjunction with a server installation. 

See [http://github.com/ariejan/firefly][1] for details on the server.

# Installation

    sudo gem install firefly-client

# Usage

    require 'rubygems'
    require 'firefly-client'
    
		firefly = Firefly::Client.new("http://aj.gs", "my_api_key")
		firefly.shorten("http://google.com") => "http://aj.gs/8ds"

# Bugs, Feature Requests, etc. 

 * [Source][2]
 * [Issue tracker][3]

[1]: http://github.com/ariejan/firefly
[2]: http://github.com/ariejan/firefly-client
[3]: http://github.com/ariejan/firefly/issues

Feel free to fork Firefly Client and create patches for it. Here are some basic instructions:

 * [Fork][4] Firefly Client
 * Create a topic branch - `git checkout -b my_branch`
 * Push to your branch - `git push origin my_branch`
 * Create an [Issue][5] with a link to your branch
 * That's it!
 
[4]: http://help.github.com/forking/
[5]: http://github.com/ariejan/firefly-client/issues

# License

    Copyright (c) 2010 Ariejan de Vroom
    
    Permission is hereby granted, free of charge, to any person obtaining
    a copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:
    
    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
    LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
    OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
    WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

