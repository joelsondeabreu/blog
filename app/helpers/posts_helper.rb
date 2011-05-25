module PostsHelper
  
  def cut_word(word, size)
    if word.length > size
      word = "#{word.slice(0..size)} ..."
    end
    word
  end
  
end
