# frozen_string_literal: true

answer = 0
i = 0
while i < 10
  i = i + 1

  answer = answer + i if i % 2 == 0
end

p answer
