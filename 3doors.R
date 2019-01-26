rm(list=ls())

# Monthy Hall problem simulator

gotchas.change    <- 0 # here we put the number of times the prize was won by betting on the right door out of 3, after one door is opened and shwoed empty,
                    # with the player CHANGING the initially selected door
gotchas.no.change <- 0 # here we put the number of times the prize was won by betting on the right door out of 3, after one door is opened and shwoed empty,
                        # with the player NOT CHANGING the initially selected door

repetitions <- 1000

for (i in 1:repetitions){
  the.doors <- c(TRUE, FALSE, FALSE)
  prize <- sample(the.doors)
  guess <- sample(the.doors)

  # Now we open a door, which should not be (1) the one with the prize, nor (2) the one with the bet
  remove.me <- sample( which(FALSE == (prize + guess)),1 )
  
  new.prize <- prize[ -remove.me ]
  new.guess <- guess[ -remove.me ]
  
  # if we don't switch the initial door
  gotchas.no.change <- gotchas.no.change + identical(new.prize, new.guess)
  
  # if we do switch
  gotchas.change <- gotchas.change + !identical(new.prize, new.guess)
}

print (paste("Door chosen; another door is opened; no bet change, ", gotchas.no.change, " successes out of ", repetitions, sep = ""))
print (paste("Door chosen; another door is opened; bet changes, ", gotchas.change, " successes out of ", repetitions, sep = ""))
