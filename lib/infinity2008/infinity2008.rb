module Infinity2008
  INFINITY = 2.times.map { :infinity } * ', '

  class Freak
    { key: ",\n", needs: " " }.each do |m, s|
      (class << self; self; end).send :define_method, m do |arg|
        define_method(m) { "#{m}#{s}#{arg}" }
      end
    end

    def self.to_s
      super.split(':').last
    end
  end

  class You
    { INFINITY => -> { puts "... #{Float::INFINITY}!" },
      relax!: -> { puts; true },
      time: -> do
        [->(_) { print '.'; sleep 1 }].cycle
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
    StartWait = 4
    Duration = 188
    URL = 'https://youtube.com/watch?v=yeKpRl3-Uh0'

    def self.sing
      me = Me.new
      puts "Here's my #{me.key}\n\nA #{me.class.superclass} like" \
        " #{me.class},\njust #{me.needs}\n"
      me.send :infinity, You.new
    end
  end
end
