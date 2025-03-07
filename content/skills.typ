#let meta = toml("../info.toml")
#import "../lib.typ": skill-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.skills
#let include-icon = meta.personal.include_icons
#let accent-color = meta.layout.accent_color
#let multicol = true
#let alignment = center

= #if include-icon [#fa-icon(icon) #h(5pt)] Skills

=== Programming languages

#skill-entry(
  accent-color,
  multicol,
  alignment,
  skills: ([Rust], [C++], [C], [TypeScript], [HTML/CSS], [Python], [C\#]),
)

=== Technologies

#skill-entry(
  accent-color,
  multicol,
  alignment,
  skills: ([Multithreading], [Async], [Networking], [REST APIs], [Infrastructure]),
)

=== DevOps

#skill-entry(
  accent-color,
  multicol,
  alignment,
  skills: ([Docker], [CI/CD], [Metrics], [Monitoring], [Cloud], [PostgreSQL], [SQLite], [Redis]),
)

// === Database management

// #skill-entry(accent-color, multicol, alignment, skills: ([PostgreSQL], [SQLite], [Redis]))

=== Tools

#skill-entry(accent-color, multicol, alignment, skills: ([Git], [Jira], [Grafana]))

=== Platforms

#skill-entry(accent-color, multicol, alignment, skills: ([Supabase], [Fly.io], [Azure], [Cloudflare]))
