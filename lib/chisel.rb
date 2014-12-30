class Chisel
      #attr_accessor :quote
  def initialize
  @quote = quote
  #@parse/@parser
  end

  quote = "total text from lines below"

  def parser#(quote) as arg?
    if @quote.first == "#"
      return <h1>
      "line one
       line two"
        </h1>
    elsif @quote.first =="##"
      return <h2>
      "line one
       line two"
      </h2>
    elsif @quote.first =="###"
      return <h3>
      "line one
      line two"
      </h3>
    elsif @quote.first == "####"
      return <h4>
      "line one
       line two"
       </h4>
     elsif @quote.first == "#####"
       return <h5>
       "line one
        line two"
        </h5>
        #not required to do <h6>
    else @quote.first != "#"  ||
                       # "##" ||
                       # "###"||
                       #"####"||
                      #"#####"||
      return <p>"paragraph of text"</p>
    end
end

# parser = Chisel.new
# output = parser.parse(quote)
# puts output
