library(shiny)
library(plotly)
library(tidyverse)

complete_data_frame2 <- read_rds(path = "complete_data_frame.rds")

ui <- navbarPage("Does the Electoral College Give Republicans an Edge?",
                 tabPanel("About",
                          h3("In the United States, the people do not directly 
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
                          h3("The data for the United States general elections was 
                          found from a Github repository which included multiple 
                          government datasets. Elections that were contested were 
                          labelled with asterisks in this dataset, so I ammended 
                          the dataset with the wikipedia data set found here: 
                          https://en.wikipedia.org/wiki/United_States_Electoral_College. 
                          The population data for the states are based off of the 
                          United States Census, conducted every 10 years. This 
                          dataset was found from a GitHub repository with historical
                          data."),
                          h3("Per political historians, it is widely believed that
                             there was a party realignment during the Presidency of
                             Franklin D. Roosevelt. As such, the comparisons made
                             between the Democratic and Republican Parties only
                             include the years from 1932 to 2016.")
                  ),
                 tabPanel("Electoral Processes",
                          h1("Current Electoral College:"),
                          h2("Winner-Take-All System"),
                          h3("This graphic shows modern elections assuming a winner
                            take all system. This is how most states run their 
                            elections. However, Nebraska and Maine split their
                            electoral votes proportionately. Also, there were
                            a few elections where there were disputed votes, which
                            were subsequently thrown out. Because of this, there
                            may be slight variation between this graphic and the
                            actual results of modern elections."),
                          br(),
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
                          h1("Directly Proportional Number of Electoral Votes:"),
                          h2("Winner-Take-All System"),
                          h3("This graphic shows how elections would look if each
                            state were allotted a truly proportional amount
                            of electoral votes. Essentially, this graphic shows
                            the possible outcomes that would occur if smaller
                            states were not given more weight in the electoral
                            college."),
                          br(),
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
                          h1("Popular Vote:"),
                          h3("This graphic shows what the elections would look
                            like if we elected our President with a national
                            popular vote."),
                          br(),
                          imageOutput("popular_vote"),
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
                          h3("As evidenced by the very minimal difference between
                             the Current Electoral College and a Directly Proportional
                             System, the argument that Electoral College protects 
                             smaller states by giving them more of a say in the voting
                             process is flawed. Equally flawed is the argument that the 
                             Electoral College is unfair because it gives the smaller states
                             a larger say. In fact, the Electoral College does not seem
                             to protect smaller states, nor does it give them a larger say
                             in our national election"),
                          br(),
                          h3("As evidenced by the drastic change between the Current Electoral
                             College and a Popular Vote, the argument that the Electoral 
                             College does not accurately reflect the views of the American
                             people is valid. However, this is what the Founding Fathers intended.
                             They believed mob rule to be a very real and valid threat, especially
                             following Shays' Rebellion in Massachusetts during the young country's
                             years under the Articles of Confederation. As such, the Electoral
                             College was put in place to control for mob rule, by placing electors
                             in charge of choosing a President. However, now that the states'
                             electors vote as their state's people vote, one could ask whether
                             or not such a system is still valid.")
                  ),
                 tabPanel("Electoral Vote Densities",
                          h1("Electoral Vote Densities:"),
                          h2("Move the slider to pick a year."),
                          h3("Electoral Vote Density, for the purposes of this
                             project, is calculated as the number of electoral
                             votes divided by the number of people represented
                             by those electoral votes"),
                          fluidRow(
                              column(3),
                              column(6, align = "center",
                                     plotOutput("plot_years"),
                                     sliderInput("input", "Year:",
                                                 min = 1932, 
                                                 max = 2016, 
                                                 value = 2000, 
                                                 step = 4)),
                              column(3)
                              ),
                          h3("Note that the latest census data was from 2010, and
                             as such, the total population estimates for states in 
                             2016 is the same as in 2012."),
                          h3("This graphic essentially shows the disproportionate
                             amount of voting power each state has in the current
                             Electoral College. However, as shown in the Electoral
                             Processes tab, this suprisingly has little effect
                             on the outcome of elections.")
                          ),
                 tabPanel("Effect of the EC",
                          h1("Popular Vote Proportions:"),
                          br(),
                          imageOutput("popular_proportions"),
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
                          h1("Electoral College Proportions:"),
                          br(),
                          imageOutput("ec_proportions"),
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
                          h3("The Electoral College Proportions are much more drastic than
                             the Popular Vote Proportions, indicating that the Electoral 
                             College skews the margins of victory, so we next look at the
                             trend of the Effect of the Electoral College over time."),
                          br(),
                          br(),
                          h1("Effect of the Electoral College on Win Percentages:"),
                          br(),
                          imageOutput("effect_of_ec"),
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
                          h3("This shows that the Electoral College skews the results both
                             positively and negatively. To see who is \"helped\" and who is \"hurt\"
                             by the Electoral College, we will need to group by the outcome of the 
                             popular vote."),
                          br(),
                          br(),
                          h1("Distributions of the Effect of the Electoral College on Win 
                             Percentages by Party:"),
                          br(),
                          imageOutput("overall_boxplot"),
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
                          h3("This makes it look like Democrats are generally helped by the
                             Electoral College. However, as suggested by the previous graphic,
                             we should group by the outcome of the popular vote to see what is
                             happening."),
                          br(),
                          br(),
                          h1("Distributions of the Effect of the Electoral College on the
                             Win Percentages of the Winner of the Popular Vote by Party"),
                          br(),
                          imageOutput("winner_boxplot"),
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
                          h3("This shows that when we group for the winner of the popular
                             vote, we can see that Republicans are actually given a larger
                             increase in their win percentage than Democrats are."),
                          br(),
                          br(),
                          h1("Distributions of the Effect of the Electoral College on the
                             Win Percentages of the Loser of the Popular Vote by Party"),
                          br(),
                          imageOutput("loser_boxplot"),
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
                          h3("This shows that when we group for the loser of the popular
                             vote, we can see that Democrats are actually given a larger
                             decrease in their win percentage than Republicans are."),
                          br(),
                          br(),
                          h3("How can this be? This is a real-life example of Simpson's
                             Paradox. Essentially, when grouped together, the overall trend
                             of the data is opposite the trends of grouped sets of the data."),
                          br(),
                          br(),
                          h1("Popular Vote Proportion vs. Electoral Vote Proportion:"),
                          br(),
                          imageOutput("pop_vs_ec_props"),
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
                          h3("This shows the logistic regressions of the effect of the popular
                             vote proportion on the electoral college proportion. As shown by 
                             the vertical and horizontal lines at 0.5, we can split the grid
                             into 4 separate quadrants. In the upper right quadrant, we have the
                             candidates who won a majority of the popular vote and the electoral 
                             vote. In the upper left quadrant, we have the candidates who failed
                             to win a majority of the popular vote, but won the electoral vote.
                             In the lower left quadrant, we have the candidates who lost both the 
                             popular vote and the electoral vote. In the lower right quadrant, we
                             would have the candidates who won a majority of the popular vote,
                             but lost the electoral vote. However, there are none. But how can there
                             be candidates who won the electoral college without winning the popular
                             vote if there are no candidates who won a majority of the popular vote
                             and lost the electoral vote? The answer is third parties. In controversial
                             elections like 2000 and 2016, third parties had just enough votes to 
                             make sure that neither of the two main candidates gained a majority of 
                             the popular vote, as shown in the Electoral College Processes tab."),
                          br(),
                          h3("These two logistic regressions are extremely similar, indicating
                             that the relationship between the popular vote proportion and the
                             electoral vote proportion is not largely affected by the party
                             of the candidate. However, it is still important to notice that for
                             the majority of the plot, the Republican regression lies slightly to
                             the left of the Democratic regression, indicating that on a very small
                             magnitude, the models predict that a Republican candidate needs a smaller 
                             popular vote proportion in order to receive the same electoral vote proportion 
                             as a Democratic candidate."),
                          br(),
                          br(),
                          h1("Difference in the Electoral College Proportion and the Popular
                             Vote Proportion vs. Popular Vote Margin"),
                          imageOutput("dif_in_props"),
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
                          h3("This regression shows that as the popular vote margin decreases,
                             there is a greater chance that the popular vote winner is 
                             negatively affected by the electoral college, regardless of the 
                             candidate's party. However, again, it is important to notice
                             that the Republican regression line lies slightly to the left
                             of the Democratic regression line, indicating that a Republican 
                             candidate would need a smaller margin of victory in the popular
                             vote in order to be as negatively affected as a Democratic
                             candidate.")
                          ),
                 tabPanel("Methods",
                          h3("I decided to study the electoral college and its effect on the 
                            Presidential Election. Because of this, I needed both election data
                            and population data. Merging these two sources, I was able to calculate
                            new variables, such as electoral vote density, and make comparisons between
                            the electoral vote and the popular vote."),
                          br(),
                          h3("I chose to use logistic regressions because the trends were definitely
                             not linear, and it made sense to have the regressions approach 0 and 1
                             since I was looking at proportions."),
                          br(),
                          h3("I also chose to filter for only modern elections for most of the
                             graphics and regressions in this project. This is not to say that
                             there are not valid models and regressions to be made from the
                             earlier years of the United States, but I was mainly interested
                             in the effect of the Electoral College on the modern Democratic
                             and Republican Parties."),
                          br(),
                          h3("I also tried to use bootstrap distributions to model the distributions
                             of the effect of the electoral college when grouped by winner/loser of
                             the popular vote and party. However, when I did this, I would have to summarize
                             across each group, and the would essentially erase the extreme values, which
                             are the interesting data points -- i.e. where the winner of the electoral vote
                             may not have been the winner of the popular vote. Instead, I decided
                             to show the distributions with boxplots. This allows us to see the extreme values
                             and the central tendencies, as well as the spread for each group."),
                          br(),
                          h3("I also wanted to see if there were any general trend over time,
                             but as evidenced by the scatterplots with the proportions of the popular
                             vote and electoral college vote over time, there does no appear to be
                             any.")
                          )
                 )

server <- function(input, output, session) {
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
        )}, deleteFile = FALSE)
    
    output$plot_years <- renderPlot({
        title <- paste("Electoral Vote Density in", input$input)
        
        plot <- complete_data_frame2 %>%
            mutate(color = ifelse(party == "Democratic", "blue", ifelse(party == "Republican", "red", "yellow"))) %>%
            filter(year == input$input) %>%
            ggplot(aes(x = reorder(state, ev_density), y = ev_density, fill = color)) +
            geom_col(width = 0.8) +
            coord_flip() +
            scale_fill_manual(values = c("#2222CC", "#CC2222", "#CCCC44"), labels = c("Democratic", "Republican", "Other")) +
            labs(title = title, 
                 y = "Electoral Vote Density", 
                 x = "State", fill = "Winning Party")
        
        plot
        })
    
    output$popular_proportions <- renderImage({
        list(src = "popular_proportions2.png",
             contentType = 'image/png',
             height = "200%",
             width = "60%",
             style="display: block; margin-left: auto; margin-right: auto;"
        )}, deleteFile = FALSE)
    
    output$ec_proportions <- renderImage({
        list(src = "ec_proportions2.png",
             contentType = 'image/png',
             height = "200%",
             width = "60%",
             style="display: block; margin-left: auto; margin-right: auto;"
        )}, deleteFile = FALSE)
    
    output$effect_of_ec <- renderImage({
        list(src = "effect_of_ec2.png",
             contentType = 'image/png',
             height = "200%",
             width = "60%",
             style="display: block; margin-left: auto; margin-right: auto;"
        )}, deleteFile = FALSE)
    
    output$overall_boxplot <- renderImage({
        list(src = "overall_boxplot2.png",
             contentType = 'image/png',
             height = "200%",
             width = "60%",
             style="display: block; margin-left: auto; margin-right: auto;"
        )}, deleteFile = FALSE)
    
    output$winner_boxplot <- renderImage({
        list(src = "winner_boxplot2.png",
             contentType = 'image/png',
             height = "200%",
             width = "60%",
             style="display: block; margin-left: auto; margin-right: auto;"
        )}, deleteFile = FALSE)
    
    output$loser_boxplot <- renderImage({
        list(src = "loser_boxplot2.png",
             contentType = 'image/png',
             height = "200%",
             width = "60%",
             style="display: block; margin-left: auto; margin-right: auto;"
        )}, deleteFile = FALSE)
    
    output$pop_vs_ec_props <- renderImage({
        list(src = "pop_vs_ec_props2.png",
             contentType = 'image/png',
             height = "200%",
             width = "60%",
             style="display: block; margin-left: auto; margin-right: auto;"
        )}, deleteFile = FALSE)
    
    output$dif_in_props <- renderImage({
        list(src = "dif_in_props2.png",
             contentType = 'image/png',
             height = "200%",
             width = "60%",
             style="display: block; margin-left: auto; margin-right: auto;"
        )}, deleteFile = FALSE)
}


shinyApp(ui, server)