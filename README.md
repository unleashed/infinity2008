[![Build Status](https://travis-ci.org/unleashed/infinity2008.svg?branch=master)](https://travis-ci.org/unleashed/infinity2008)

# The Infinity 2008 (Klaas Vocal Edit) gem

This gem makes Ruby sing with you the [Guru Josh Project's Infinity 2008 (Klaas Vocal Edit)](https://www.youtube.com/watch?v=w9KnuJZkBjg) song through both *STDOUT* and the *SOURCE CODE*.

## Usage

You should start the song at the same time than this program with something like this:

    $ infinity2008 & play infinity2008.mp3

Or, if you feel like it, watch the video while the program sings:

    $ infinity2008 --video

A much more dense and bare version of the same code suitable for posters or shirts is:

    $ infinity2008-dense

The 'default' non-dense version is more readable, includes support for opening the video and a bit of extra boiler-plate related to code encapsulation.

## Motivation

In May 2013 I was listening to Infinity 2008 in a summer hits remember session when I thought that it would be a fun exercise to show how Ruby expressiveness and terseness could be leveraged to write a small program loosely based on the lyrics of the song. The idea was to make it _sing_ both in the console output and specially in the code itself, aiming at making it small enough (even if dense) to print it on a shirt with code highlighting.

Actually printing it on a shirt is problematic because the letters end up being pretty small and you'd need a not too wide fixed font, but I encourage you to find a solution for that (and sending me a PR and a couple of those kick-ass shirts!)

## Generating the gem

Both bundler and rspec are required to build the gem:

    $ gem install bundler rspec

Run rake -T to see available tasks. The gem can be built with:

    $ rake build

Or, if you want to make sure everything works correctly:

    $ bundle exec rake build

## Installation

After generating the gem, install it using:

    $ gem install pkg/infinity2008-*.gem
