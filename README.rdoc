= list

* http://www.geeklob.wordpress.com

== DESCRIPTION:

List is a simple linked list implementation in Ruby.

== FEATURES/PROBLEMS:

* FIX (list of features or problems)

== SYNOPSIS:

	require 'list'
	
	Node.new(:first)
	# => #<Node:0x3659fc @n=nil, @d=:first>
	
	[:first].to_list
	# => #<Node:0x3645c0 @n=nil, @d=:first>
	
	(1..10).to_a.to_list
	# => #<Node:0x357334 @n=#<Node:0x35730c @n=#<Node:0x3572e4 @n=#<Node:0x3572bc @n=#<Node:0x357294 @n=#<Node:0x35726c @n=#<Node:0x357244 @n=#<Node:0x35721c @n=#<Node:0x3571f4 @n=#<Node:0x3571cc @n=nil, @d=10>, @d=9>, @d=8>, @d=7>, @d=6>, @d=5>, @d=4>, @d=3>, @d=2>, @d=1>
	
	# Fully implements Enumerable
	
	(1..10).to_a.to_list.find_all { |x| x % 3 == 0}
	
== REQUIREMENTS:

* None

== INSTALL:

* sudo gem install indigo747-list
* or download the gem.

== DEVELOPERS:

After checking out the source, run:

  $ rake newb

This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

== LICENSE:

(The MIT License)

Copyright (c) 2010 FIX

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
