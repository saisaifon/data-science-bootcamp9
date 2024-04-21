# create_pao_ying_chup_game
gogame <- function(){
  
  greeting <- readline("Welcome to the game! What's your name: ")
  text = paste("Let's play game", greeting)
  print(text)
  
  
  player_score <- 0
  bot_score <- 0
  
  hands <- c("rock", "scissors", "paper")
  
  while (TRUE) {
    player_hand <- readline("Choose your hand: ")
    bot_hand <- sample(hands,1)
    print(paste("bot_hand:", bot_hand))
    
    
    if(player_hand == "end"){
      print("OK! See you again")
      break
    }
    
    if (bot_hand == "rock" & player_hand == "scissors"){
      print("You Lose!")
      bot_score = bot_score + 1
  
    }else if(bot_hand == "rock" & player_hand == "paper"){
      print("You Win!")
      player_score = player_score + 1

    }else if(bot_hand == "scissors" & player_hand == "rock"){
      print("You Win!")
      player_score = player_score + 1
     
    }else if(bot_hand == "scissors" & player_hand == "paper"){
      print("You Lose!")
      bot_score = bot_score + 1
      
    }else if(bot_hand == "paper" & player_hand == "rock"){
      print("You Lose!")
      bot_score = bot_score + 1
      
    }else if(bot_hand == "paper" & player_hand == "scissors"){
      print("You Win!")
      player_score = player_score + 1
     
    }
    print(paste("Score! Bot:", bot_score, ":", player_score, "Player"))
  }
}


##call function
gogame()
