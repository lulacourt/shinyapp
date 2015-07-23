shinyServer(
    function(input, output) {

	# Character's age.
	output$txt<-renderPrint({
		if (input$id1=="1") "...16 years old"
		else if (input$id1=="2") "... 1044 years old (I'm frozen)"
		else if (input$id1=="3") "... 31 years old (I'm a magical dog)"
		else if (input$id1=="4") "... 1003 years old (I'm a vampire)"
		else if (input$id1=="5") "... 828 years old"
		})

	# Age comparisons.
	output$txt2<-renderPrint({
		if (input$id1=="1") "...younger than you"
		else if (input$id1=="2") paste(1044-input$id2, "years older than you")
		else if (input$id1=="3" && input$id2==31) "...as young as you"
		else if (input$id1=="3" && input$id2>31) paste(input$id2-31, "years younger than you")
		else if (input$id1=="3" && input$id2<31) paste(31-input$id2, "years older than you")
		else if (input$id1=="4") paste(1003-input$id2, "years older than you")
		else if (input$id1=="5") paste(828-input$id2, "years older than you")
		})

	# Calculating absolute standardized age.
	output$txt3<-renderPrint({
		val<-c(16,1044,31,1003,828)
		round(abs((input$id2-mean(val))/sd(val)),2)
		})

   }
)