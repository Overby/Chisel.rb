require 'pry'

class Markdown
end

class Chisel
  attr_reader :text, :new_text

  def parse(text)
    @text = text
    @new_text = text.gsub("#", '')

    if text_without_pounds?
      parsed = "<p>#{new_text}</p>"
    else
      parsed = "<h#{pound_signs}>#{new_text}</h#{pound_signs}>"
    end

    italicize(parsed)
  end

  def pound_signs
    characters = text.split("")
    characters.select do |c|
      c == "#"
    end.count
  end

  def text_without_pounds?
    !text.include? "#"
  end

  def italicize(phrase)
    if text.include?("*")
      phrase.gsub!(" *", " <em>")
      phrase.gsub!("* ", "</em> ")
      phrase
    else
      phrase
    end


  end



      #attr_accessor :quote
#   def initialize
#   @quote = quote
#   end
#
#   quote= '# My Life in Desserts
# ## Chapter 1: The Beginning
# "You just <em>*have*</em> to try the cheesecake," he said. "Ever since it appeared in
# **<strong>Food & Wine</strong>**this place has been packed every night."'
#
#   def parser#(quote) as arg?
#     if @quote.first == "#"
#       return <h1>
#       "line one
#        line two"
#       </h1>
#     elsif @quote.first =="##"
#       return <h2>
#       "line one
#        line two"
#       </h2>
#     elsif @quote.first =="###"
#       return <h3>
#       "line one
#       line two"
#       </h3>
#     elsif @quote.first == "####"
#       return <h4>
#       "line one
#        *line two*"
#        </h4>
#      elsif @quote.first == "#####"
#        return <h5>
#        "line one
#         line two"
#         </h5>
#         #not required to do <h6>
#     else @quote.first != "#"  ||
#                        # "##" ||
#                        # "###"||
#                        #"####"||
#                       #"#####"||
#       return <p>"paragraph of text"</p>
#     end
#   end
end
