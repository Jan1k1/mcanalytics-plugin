---
name: network-report
description: Answer questions about a Minecraft server or network that uses MCAnalytics. Use when the user asks about players online, new or returning players, retention, why joins dropped or spiked, which server lags, uptime, where players come from (join addresses, creators, server lists), store revenue, or a comparison between two periods.
---

Use the MCAnalytics connector tools. They are read only and read the user's own dashboard numbers.

1. If you do not know which network to read, call `list_networks`. If the user has one network, use it without asking. If they have several and did not say which, ask once.
2. Pick the range from the question: `today`, `24h`, `7d`, `30d`, `90d`, `1y` or `all`. Use `7d` when the user gives no range. Longer ranges depend on the plan; if a tool says the range is not on the plan, tell the user and answer for the longest range it allows.
3. Pick the tool:
   - Headline numbers for one period: `network_overview`
   - A trend over time, or "when did it change": `player_activity_timeseries`
   - Who comes back after day 1, 7 and 30: `retention`
   - Lag, tick rate, memory, uptime, which server stopped reporting: `server_health`, then `recent_alerts` for anything unhealthy right now
   - Where players come from and which source keeps them: `join_sources`
   - Money: `revenue_summary`
   - Countries: `geography`
   - "This week vs last week", "this month vs last month": `compare_ranges`
   - Top players by playtime or days active: `top_players`
4. For "why did X drop", read `compare_ranges` for the two periods, then `player_activity_timeseries` to find the hour or day it moved, then `join_sources` and `server_health` for that window. Name the most likely cause and the number behind it. Say when the data does not show a cause.

Answer with the number first, then one short line of meaning. Do not paste raw tool output. Never invent a number a tool did not return. If a tool returns no data yet (for example a server paired today), say so plainly.
