##ui.R
shinyUI(
  pageWithSidebar(
    headerPanel("The Central Limit Theorem"),
    sidebarPanel(
      numericInput('lambda', 'Lambda:', value = 1, min = 0.1, max = 10, step = 0.1)
    ),
    mainPanel(
      withMathJax("Verification of the Central Limit Theorem using an 
                  exponential distribution $$f(x) = \\lambda e^{-\\lambda x}.$$"),
      withMathJax("We know from theory that the expected value for
                  the exponential distribution is $$1/\\lambda.$$"),
      withMathJax("After submitting a value for $$\\lambda (\\lambda > 0)$$ on the left,
                  the expected value for the associated exponential distribution is
                  calculated, along with 1000 simulations of 50 exponentials. The two
                  values are shown below for comparison and verification of the Central
                  Limit Theorem."),
      p('\n'),
      p('\nExpected value from function: '),
      textOutput('textfun'),
      p('\n'),
      p('\nSample mean: '),
      textOutput('textsam')
    )
  )
)