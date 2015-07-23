shinyUI(fluidPage(
    titlePanel(a("Adventure Time's age calculator",href="http://www.cartoonnetwork.co.uk/show/adventure-time",target="_blank")),
    sidebarPanel(

	img(src="advtime.jpg"),	

        radioButtons("id1", "What mood are you in today?",
                           c("Brave" = "1",
                             "Angry" = "2",
                             "Funny" = "3",
			     "Rocker" = "4",
                             "Nerd" = "5"),selected="1"),

	conditionalPanel(
		condition="input.id1=='1'",
		img(src="Finn.png")),

	conditionalPanel(
		condition="input.id1=='2'",
		img(src="Ice-King.png")),

	conditionalPanel(
		condition="input.id1=='3'",
		img(src="Jake.png")),

	conditionalPanel(
		condition="input.id1=='4'",
		img(src="Marceline.png")),

	conditionalPanel(
		condition="input.id1=='5'",
		img(src="Princess.png")),

	h5("I'm..."),
	verbatimTextOutput("txt"),
	sliderInput("id2","Enter your age: ",value="18",min=18,max=99,step=1),
	h5("I'm..."),
	verbatimTextOutput("txt2"),
	h5("Your absolute standardized age in Land of Ooo: "),
	verbatimTextOutput("txt3")

    ),
    
        mainPanel(
		tabsetPanel(
			tabPanel("Users guide",
				h5("This guide has been made for you, human.")),
			tabPanel("Step 1",
				h5("Select a character of the Land of Ooo, according to your mood.")),
			tabPanel("Step 2",
				h5("Enter your age in the slider.")),
			tabPanel("Step 3",
				h5("See how young you are in comparison with the Ooo inhabitants and your absolute standardized age."))
			   )	    	    
        )

))