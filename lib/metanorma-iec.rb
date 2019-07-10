require "asciidoctor" unless defined? Asciidoctor::Converter
require_relative "asciidoctor/iec/converter"
require_relative "metanorma/iec/version"
require "isodoc/iec/html_convert"
require "isodoc/iec/word_convert"

if defined? Metanorma
  require_relative "metanorma/iec"
  Metanorma::Registry.instance.register(Metanorma::Iec::Processor)
end

