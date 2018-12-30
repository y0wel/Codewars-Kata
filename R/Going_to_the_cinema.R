movie <- function(card, ticket, perc) {
  times <- 0
  card_perc <- 0
  new_ticket_price <- 0
  new_card <- card
  while (new_card >= new_ticket_price) {
    new_card <- card
    times <- times + 1
    new_ticket_price <- ticket * times
    card_perc <- card_perc + (ticket * perc^times)
    new_card <- ceiling(new_card + card_perc)
  }
  return(times)
}