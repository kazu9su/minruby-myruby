# frozen_string_literal: true

require 'minruby'

def evaluate(tree)
  case tree[0]
  when 'lit'
    tree[1]
  when '+'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left + right
  when '-'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left - right
  when '*'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left * right
  when '/'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left / right
  when '%'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left % right
  when '**'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left ** right
  when '<'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left < right
  when '>'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left > right
  when '=='
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left == right
  end
end

def max(tree)
  case tree[0]
  when 'lit'
    tree[1]
  else
    left = max(tree[1])
    right = max(tree[2])

    left > right ? left : right
  end
end

str = gets

tree = minruby_parse(str)

answer = evaluate(tree)

p answer

max = max(tree)

p max
