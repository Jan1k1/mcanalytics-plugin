# MCAnalytics

Ask Claude or ChatGPT about your Minecraft network and get answers from your own MCAnalytics dashboard: players online, new and returning players, retention, join sources, server health, store revenue, and comparisons between two periods.

## Use it

1. Install the plugin and connect MCAnalytics. In Claude Code:

   ```
   /plugin install mcanalytics --marketplace Jan1k1/mcanalytics-plugin
   ```

   In claude.ai or ChatGPT, add it from the directory once it is listed. You sign in on mcanalytics.org and choose which of your networks the app may read.
2. Ask a question, for example:
   - How many players came back this week?
   - Why did joins drop on Tuesday?
   - Which server lags most right now?
   - Compare revenue this month with last month.
   - Which join address brings players who actually stay?

You need an MCAnalytics account with at least one paired server. Setup guide: https://mcanalytics.org/docs/ai-connectors

## Data

The plugin connects to `https://mcanalytics.org/mcp`. Every tool is read only: it cannot change settings, delete data, send messages or spend money. It reads only the networks you approved, and the plan limits of your dashboard apply. You can revoke access at any time in MCAnalytics under Settings, Connected AI apps, which also ends the tokens already issued.

Privacy policy: https://mcanalytics.org/privacy. Terms: https://mcanalytics.org/terms. Support: mail@mcanalytics.org.

## ChatGPT package

`openai/` holds the ChatGPT plugin manifest. `sh scripts/build-chatgpt-zip.sh` writes `dist/mcanalytics-chatgpt-plugin.zip` for upload at platform.openai.com/plugins.
