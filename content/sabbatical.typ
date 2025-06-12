#let meta = toml("../info.toml")
#import "../lib.typ": experience-entry, language-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.sabbatical
#let include-icon = meta.personal.include_icons

= #if include-icon [#fa-icon(icon) #h(5pt)] Sabbatical

#show link: underline

#v(3pt)

#experience-entry(
  title: [Programming Retreat Participant],
  date: [2024],
  company: link("https://recurse.com")[Recurse Center],
  location: [Brooklyn, NY],
)

- Gained depth and breadth of knowledge of web technologies and infrastructure.
  - Built horizontally and vertically scalable backend services.
  - Implemented authentication, logging, configuration, metrics and monitoring.
  - CI/CD with extensive testing and cloud native hosting of Docker containers.
- Created a #link("https://dial-a-poem.com")[small website] to view a random poem. HTML with Rust \& SQLite backend. (#link("https://github.com/swlody/dial-a-poem")[Code])
- Launched another #link("https://rrgrng.org")[interactive website] where users could communicate data between a REST API and WebSockets by utilizing Redis Pub/Sub and sorted sets. (#link("https://github.com/swlody/random-crowdsourced")[Code]) (#link("https://swlody.dev/rrgrng")[Writeup])
  - Performed #link("https://swlody.dev/re-rrgrng")[live troubleshooting] of scaling issues after getting some internet attention.
- Honed distributed systems skills using the #link("https://fly.io/dist-sys")[Maelstrom workbench]. (#link("https://github.com/swlody/gossip-glomers")[Code])
- Created a #link("https://swlody.dev")[personal website] where you can read more about me!
