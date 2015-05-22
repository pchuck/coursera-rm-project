# Coursera, Regression Models, Final Project
#
# exploratory analysis of the mtcars data set
#

# tmuxinator an R dev environment
create_env:
	tmuxinator start r-sandbox

render:
	./R/rmdToHtml.R mtcars_mpg_rm

# remove generated files
clean:
	rm -f $(SRC).csv
	rm -f *.html *.md
	rm -rf figure/

