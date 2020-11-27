CONSTANT = 'I DO NOT CHANGE'

puts CONSTANT

CONSTANT = 'Or do I?'

puts '--------'

puts CONSTANT

CONSTANT.freeze

puts '--------'

CONSTANT = 'Try me'

puts CONSTANT

puts '--------'

CONSTANT.freeze

CONSTANT << 'try me'

puts CONSTANT