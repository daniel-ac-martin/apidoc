# apidoc

A system for generating API reference documentation from a collection of XML
files.

## Rationale

API documentation matters. The quality of a software library's documentation has a
great effect on the speed at which a prospective programmer can start using it,
and that speed greatly affects whether the library will be used at all.

At present there are two main approaches to producing API documentation. The
first is two simply write it manually as you would the rest of your project's
documentation. The other is to insert specially formatted comments directly into
your project's source and to generate documentation from this. (Examples include
Doxygen, javadoc and PHPDocumentor.) In my opinion, both of these approaches are
quite flawed.

In the first approach it is very easy for mistakes in the API specification to
not be picked up. This is because general documentation formats are not designed
to deal with programming APIs, which must be very strictly defined. Also, it is
very easy for programmers to change the API in the source code whilst forgetting
to update the documentation.

In the case of in-line documentation, there is the ugly situation of having two
separate syntaxes mixed in a single file. The rationale is that the programmer
should update the documentation at the same time he changes the source code but
again, there is no guarantee of this. The benefit this offers over the first
approach is that the API is at least strictly defined, though it may still
become outdated.

Intermingling API documentation generally causes at least one of the following
problems:

	1. The source code becomes much harder to read as considerable screen space
	   is given over to the documentation comments.
	2. The API is insufficiently documented as the programmer attempts minimise
	   the pollution of his source code. i.e. In-line documentation is an excuse
	   for hardly documenting at all.

Additionally, in-line documentation can encourage a lack of proper traditional
commenting or source code. - Comments that are useful to the programmer working
on the library itself are very different in nature from API documentation.

Instead, I propose an alternative. Rather than loosely defining APIs in the main
documentation or strictly defining them in a second syntax in our source code,
we can maintain a set of API documentation files adjacent to our source code
files and strictly define our API in those. e.g.

	project/src/some_file.php  # Some source code file
	project/src/some_file.xml  # The strict specification of the API along with
	                           # documentation

Alternatively, one could provide a separate directory for the purpose in the
same way many people separate off their unit tests from their main source code.
e.g.

	project/src/some_file.php      # Some source code file
	project/src-doc/some_file.xml  # The strict specification of the API along
	                               # with documentation

This approach has the following advantages:

	1. The API documentation can use its own strictly defined syntax ensuring
	   that the specification is valid.
	2. Source code syntax and documentation syntax are no longer mixed in the
	   same files. Source code can be beautiful and concise again with comments 
	   that are actually helpful.
	3. Conformance with the documentation can be tested for in the unit tests.
	   (Most general purpose programming languages have libraries for reading
	   XML files.) This makes it far easier to ensure that the documentation is
	   correct.

## The initial implementation

This project is the initial implementation of the idea. I am using it to
document a library I have written in PHP. (Though the system should work just as
well for many other languages.) It works well for my purposes but I should
stress that it has been hacked together using mainly XSLT and bash. i.e. It
is not the most elegant implementation imaginable. I suspect it will only run on
GNU/Linux systems, though it might be possible to use it on other *nix systems
and Cygwin environments.

The main requirements are:

	1. GNU Bash
	2. xmllint (libxml)
	3. xsltproc (libxml)

It compiles the source documentation to another documentation format so that it
can be incorporated into the project's main documentation. At the time of
writing the only format supported is the Docbook format used by PhD (which is
what is used to generate php.net).

## Installation

Besides checking out the code through git. It is possible to install it through
composer by adding the following to your projects composer.json file:

	[...]
	"require": {
		[...]
		"daniel-ac-martin/apidoc": "0.1"
	},
	[...]

Then running the following command from your project's root directory:

	php composer.phar install

apidoc can then be run by typing:

	vendor/bin/apidoc

## Usage

The main script file, apidoc, is a bash script. Full usage information is
available by executing "apidoc -h".

Generally one creates an XML file called "apidoc.xml" in the root directory of
your project from which apidoc takes it's information. (Alternatively the
program can be called with the information provided through the programs
arguments.) Here is an example of the configuration file:

	<?xml version="1.0" encoding="UTF-8"?>
	<apidoc-config>
		<source>
			<directory filter="*.xml">src-doc</directory>
		</source>
		<transformations>
			<transform template="phpnet">build/doc</transform>
		</transformations>
	</apidoc-config>

This will look for source files in the src-doc/ directory that end with ".xml".
It will then collate them and then transform them using the template called
"phpnet" (the only valid template at the time of writing). The transformed files
(including any intermediate steps) will then be placed in the build/doc/
directory. The user can then insert the resulting API documentation into their
project's main documentation.

## License

Copyright (C) 2014 Daniel A.C. Martin

Distributed under the GNU General Public License v3 or any later version.
