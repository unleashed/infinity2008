module Infinity2008
  INFINITY = 2.times.map { :infinity } * ', '

  class Freak
    { key: ",\n", needs: " " }.each do |m, s|
      (class << self; self; end).send :define_method, m do |arg|
        #class_eval { define_method(m) { "#{m}#{s}#{arg}" } }
        define_method(m) { "#{m}#{s}#{arg}" } 
      end
    end

    def self.to_s
      super.split(':').last
    end
  end

  class You
    { INFINITY => lambda { puts "... #{Float::INFINITY}!" },
      relax!: lambda { puts; true },
      time: lambda do
        [lambda { |_| print '.'; sleep 1 }].cycle
      end
    }.each do |m, l|
      define_method(m) { print "#{m} "; l.call }
    end

    def in?(o)
      (@t ||= ([false] * Song::Duration).each).next
    rescue
      true.tap { puts " trust in #{o.class}" }
    end

    def method_missing(m, *args)
      m == :find ? send(*args) : self
    end
  end

  class Me < Freak
    key :philosophy
    needs :infinity

    def infinity(you)
      you.relax! and you.r.time.take_while { |time|
        !you.trust.in? self and time.(goes_by: :naturally)
      } and you.will.find INFINITY
    end
  end

  module Song
    Duration = 188
    URL = 'https://www.youtube.com/watch?v=w9KnuJZkBjg'

    def self.sing
      me = Me.new
      puts "Here's my #{me.key}\n\nA #{me.class.superclass} like" \
        " #{me.class},\njust #{me.needs}\n"
      me.send :infinity, You.new 
    end
  end
end
