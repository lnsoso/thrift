#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift/protocol'

module SpecNamespace
    class Hello
      include Thrift::Struct
      Thrift::Struct.field_accessor self, :greeting
      FIELDS = {
        1 => {:type => Thrift::Types::STRING, :name => 'greeting', :default => 'hello world'}
      }
    end

    class Foo
      include Thrift::Struct
      Thrift::Struct.field_accessor self, :simple, :words, :hello, :ints, :complex, :shorts
      FIELDS = {
        1 => {:type => Thrift::Types::I32, :name => 'simple', :default => 53},
        2 => {:type => Thrift::Types::STRING, :name => 'words', :default => 'words'},
        3 => {:type => Thrift::Types::STRUCT, :name => 'hello', :default => Hello.new({
          'greeting' => 'hello, world!',
        }), :class => Hello},
        4 => {:type => Thrift::Types::LIST, :name => 'ints', :default => [
          1,
          2,
          2,
          3,
        ], :element => {:type => Thrift::Types::I32}},
        5 => {:type => Thrift::Types::MAP, :name => 'complex', :key => {:type => Thrift::Types::I32}, :value => {:type => Thrift::Types::MAP, :key => {:type => Thrift::Types::STRING}, :value => {:type => Thrift::Types::DOUBLE}}},
        6 => {:type => Thrift::Types::SET, :name => 'shorts', :default => Set.new([          5,
          17,
          239,
        ]), :element => {:type => Thrift::Types::I16}}
      }
    end

    class BoolStruct
      include Thrift::Struct
      Thrift::Struct.field_accessor self, :yesno
      FIELDS = {
        1 => {:type => Thrift::Types::BOOL, :name => 'yesno', :default => true}
      }
    end

    class SimpleList
      include Thrift::Struct
      Thrift::Struct.field_accessor self, :bools, :bytes, :i16s, :i32s, :i64s, :doubles, :strings, :maps, :lists, :sets, :hellos
      FIELDS = {
        1 => {:type => Thrift::Types::LIST, :name => 'bools', :element => {:type => Thrift::Types::BOOL}},
        2 => {:type => Thrift::Types::LIST, :name => 'bytes', :element => {:type => Thrift::Types::BYTE}},
        3 => {:type => Thrift::Types::LIST, :name => 'i16s', :element => {:type => Thrift::Types::I16}},
        4 => {:type => Thrift::Types::LIST, :name => 'i32s', :element => {:type => Thrift::Types::I32}},
        5 => {:type => Thrift::Types::LIST, :name => 'i64s', :element => {:type => Thrift::Types::I64}},
        6 => {:type => Thrift::Types::LIST, :name => 'doubles', :element => {:type => Thrift::Types::DOUBLE}},
        7 => {:type => Thrift::Types::LIST, :name => 'strings', :element => {:type => Thrift::Types::STRING}},
        8 => {:type => Thrift::Types::LIST, :name => 'maps', :element => {:type => Thrift::Types::MAP, :key => {:type => Thrift::Types::I16}, :value => {:type => Thrift::Types::I16}}},
        9 => {:type => Thrift::Types::LIST, :name => 'lists', :element => {:type => Thrift::Types::LIST, :element => {:type => Thrift::Types::I16}}},
        10 => {:type => Thrift::Types::LIST, :name => 'sets', :element => {:type => Thrift::Types::SET, :element => {:type => Thrift::Types::I16}}},
        11 => {:type => Thrift::Types::LIST, :name => 'hellos', :element => {:type => Thrift::Types::STRUCT, :class => Hello}}
      }
    end

  end
