my_plot <- ggplot(data =penguins,aes(x=flipper_length_mm, y=body_mass_g, color=species))+
  geom_point()+
  labs(title = "palmer penguins: Body_mass vs Flipper_length", 
       subtitle = "sample of three species",
       caption="Data colleted by DR kristen Gorman")+
  annotate("text", x=220,y=3500, 
           label ="The gentoos are the largest species of animal")
my_plot
ggsave("E:/R/DATA/myplot.png", my_plot, width = 5, height = 5)

ggplot(data = booking_df) +
  geom_bar(mapping = aes(x = market_segment, fill =deposit_type)) +
  facet_wrap(~hotel)+
  theme(axis.text.x = element_text(angle = 40, vjust = .7, color= 'blue',
  size = 14, ))+
  labs(title = "Comparison of market segments by hotel type for hotel bookings",
       subtitle = paste0("Date from: ", min_date ," To " ,max_date ))

max_date <- max(booking_df$arrival_date_year)
min_date <- min(booking_df$arrival_date_year)
min_date
max_date