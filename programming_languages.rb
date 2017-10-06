require 'pry'

=begin

 #### WHAT languages is at start ####

 languages
 => {:oo=>
   {:ruby=>{:type=>"interpreted"},
    :javascript=>{:type=>"interpreted"},
    :python=>{:type=>"interpreted"},
    :java=>{:type=>"compiled"}},
  :functional=>
   {:clojure=>{:type=>"compiled"},
    :erlang=>{:type=>"compiled"},
    :scala=>{:type=>"compiled"},
    :javascript=>{:type=>"interpreted"}}}

 #### WHAT we want languages to look like ####

 {
   :ruby => {
     :type => "interpreted",
     :style => [:oo]
   },
   :javascript => {
     :type => "interpreted",
     :style => [:oo, :functional]
   },
   :python => {
     :type => "interpreted",
     :style => [:oo]
   },
   :java => {
     :type => "compiled",
     :style => [:oo]
   },
   :clojure => {
     :type => "compiled",
     :style => [:functional]
   },
   :erlang => {
     :type => "compiled",
     :style => [:functional]
   },
   :scala => {
     :type => "compiled",
     :style => [:functional]
   }
 }
=end

def reformat_languages(languages)
  new_hash = {}
  languages.collect do |style, hash|
    hash.collect do |language, language_info|

      new_hash[language]
      language_info[:style] = []
        language_info[:style] << style
#        new_hash[hash]
      end

#      binding.pry
=begin
  {
    language => {language_info => language_info[:type], language_info[:style] => [style]},
    language => {language_info[:type] => "compiled", language_info[:style] => [style]},
    language => {language_info[:type] => "compiled", language_info[:style] => [style]}
  }
=end
#  new_hash.to_h


  end
#  new_hash
end
