# Monthy-Hall-problem-simulator
So there are these three doors, and behind two of them there is a GOAT, and behind the third there is a CAR.

You get to choose a door and the prize it's what lies behind it. And even if you love goats and despise cars, you WANT the car as you can later sell it and get even MORE goats.

So you choose your door. But then, something happens: the prize guy opens a door (not the one you chose, of course), and reveals a GOAT behind it! Now you have a choice:

+ you STICK with the door you chose

+ you SWITCH your bet to the other door

What do you do?

#### Solution
You switch the door to increase the probability of winning the car. Period.

The short explanation is that the first choice had 1/3 probability of winning the car. But after they open a door, you get to choose AGAIN (if you switch), and by doing so you have a 1/2 probability of winning the car.
[Wikipedia offers a way more detailed explanation, along with the story of the problem.](https://en.wikipedia.org/wiki/Monty_Hall_problem)

# Why this code?
I had an INSANE argument about the mathematical reasons behind this trick, which I admit is counterintuitive. So I wrote this few lines to SIMULATE the whole thing and show EMPIRICALLY that it is correct.


