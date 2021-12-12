hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = hsh.each_with_object([]) do |(_, info), arr|
        if info[:type] == 'fruit'
          colors = info[:colors].map {|color| color.capitalize}
          arr << colors
        else
          arr << info[:size].upcase
        end
      end

p arr
