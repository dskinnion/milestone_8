library(shiny)
library(plotly)

ui <- navbarPage("Does the Electoral College Give Republicans an Edge?",
                 tabPanel("About",
                          p("In the United States, the people do not directly 
                          vote for President. The Founding Fathers believed that
                          a true democracy was subject to the rule of factions
                          and mob rule. The electoral college, they believed,
                          would protect against this. Instead of having each
                          person's vote count towards President, each state
                          receives a certain number of electoral votes. The 
                          number of electoral votes for each state is equal 
                          to the numbers of members of congress for that state 
                          (the number of senators, plus the number of 
                          representatives). When the 23rd Amendment was ratified 
                          in 1961, Washington D.C. was also given electoral votes, 
                          but not to exceed the lowest number of votes that a 
                          state has -- this has usually limited D.C. to 3 votes."),
                          p("The data for the United States general elections was 
                          found from a Github repository which included multiple 
                          government datasets. Elections that were contested were 
                          labelled with asterisks in this dataset, so I ammended 
                          the dataset with the wikipedia data set found here: 
                          https://en.wikipedia.org/wiki/United_States_Electoral_College. 
                          The population data for the states are based off of the 
                          United States Census, conducted every 10 years. This 
                          dataset was found from a GitHub repository with historical
                          data.")),

                 tabPanel("Electoral Processes",
                          p("This graphic shows modern elections assuming a winner
                            take all system. This is how most states run their 
                            elections. However, Nebraska and Maine split their
                            electoral votes proportionately. Because of this, there
                            may be slight variation between this graphic and the
                            actual results of modern elections."),
                          imageOutput("electoral_vote"),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          p("This graphic shows how elections would look if each
                            state were allotted a truly proportional amount
                            of electoral votes. Essentially, this graphic shows
                            the possible outcomes that would occur if smaller
                            states were not given more weight in the electoral
                            college."),
                          imageOutput("directly_proportional"),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          br(),
                          p("This graphic shows what the elections would look
                            like if we elected our President with a national
                            popular vote."),
                          imageOutput("popular_vote")))

server <- function(input, output) {
    output$popular_vote <- renderImage({
        list(src = "popular_vote2.png",
             contentType = 'image/png',
             height = "200%",
             width = "60%",
             style="display: block; margin-left: auto; margin-right: auto;"
        )}, deleteFile = FALSE)

    output$electoral_vote <- renderImage({
        list(src = "electoral_vote2.png",
             contentType = 'image/png',
             height = "200%",
             width = "60%",
             style="display: block; margin-left: auto; margin-right: auto;"
        )}, deleteFile = FALSE)

    output$directly_proportional <- renderImage({
        list(src = "directly_proportional2.png",
             contentType = 'image/png',
             height = "200%",
             width = "60%",
             style="display: block; margin-left: auto; margin-right: auto;"
        )}, deleteFile = FALSE)}

shinyApp(ui, server)