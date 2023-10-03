colnames(combined_bars)

ggplot(data = combined_bars) +
  geom_histogram(mapping = aes(x = TotalMinutesAsleep), fill = "steelblue", color = "black") +
  labs(x = "Time in Bed", y = "Frequency", title = "Distribution of Time in Bed") +
  theme_linedraw()

ggplot(data = combined_bars) +
  geom_bar(mapping = aes(x = TotalMinutesAsleep, y = StepTotal), stat = "identity", fill = "steelblue", color = "black", size = 0.5) +
  labs(x = "Time spent in bed (minutes)", y = "Steps", title = "Time spent in bed vs. Steps in a day") +
  theme_minimal()

total_sum <- sum(combined_bars$TotalMinutesAsleep)

ggplot(data = combined_bars) +
  geom_bar(mapping = aes(x = TotalMinutesAsleep), color = "steelblue", stat = "count") +
  labs(x = "Time in Bed", y = "Steps", title = "Rest vs. Steps") +
  theme_linedraw()

ggplot(data = combined_bars) +
  geom_bar(mapping = aes(x = TotalMinutesAsleep, y = ..sum.., fill = "steelblue"), stat = "identity") +
  labs(x = "Time in Bed", y = "Total Sum", title = "Sum of Time in Bed") +
  theme_linedraw()

ggplot(data = combined_bars) +
  geom_bar(mapping = aes(x = TotalMinutesAsleep, y = after_stat(sum(TotalMinutesAsleep)), fill = "blue"), stat = "identity") +
  labs(x = "Time in Bed", y = "Total Sum", title = "Sum of Time in Bed") +
  theme_linedraw()

ggplot(data = combined_bars) +
  geom_col(mapping = aes(x = TotalMinutesAsleep, y = after_stat(sum(TotalMinutesAsleep)), fill = "blue")) +
  labs(x = "Time in Bed", y = "Total Sum", title = "Sum of Time in Bed") +
  theme_linedraw()