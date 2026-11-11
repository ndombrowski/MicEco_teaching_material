-- hide-answers.lua
-- Removes every answer box from a page.
-- Answer boxes are written as ::: {.callout-answer .callout-warning ...}.
-- Quarto reads the first "callout-" class as the callout type, so an answer
-- box arrives here as a Callout with type "answer".
-- Used by the "noanswers" profile (_quarto-noanswers.yml) to make the
-- Canvas versions of the standalone chapters. Task boxes and tips stay.

return {
  Callout = function(el)
    if el.type == "answer" then
      return {}
    end
    return el
  end
}
