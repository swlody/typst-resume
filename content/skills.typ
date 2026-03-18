#let meta = toml("../info.toml")
#import "../lib.typ": skill-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.skills
#let include-icon = meta.personal.include_icons
#let accent-color = meta.layout.accent_color
#let multicol = true
#let alignment = center

= #if include-icon [#fa-icon(icon) #h(5pt)] Skills

#v(3pt)

=== Competencies

#skill-entry(
  accent-color,
  multicol,
  alignment,
  skills: ([Multithreading], [Async], [Networking], [API design]),
)

=== Programming languages

#skill-entry(
  accent-color,
  multicol,
  alignment,
  skills: ([Rust], [Ruby], [TypeScript], [C and C++], [Python], [C\#]),
)

=== DevOps & Databases

#skill-entry(
  accent-color,
  multicol,
  alignment,
  skills: ([Docker], [CI/CD], [Metrics], [Monitoring], [Azure], [AWS], [Grafana], [Sentry], [PostgreSQL], [Redis]),
)

=== Frameworks & Tools

#skill-entry(accent-color, multicol, alignment, skills: ([Rails], [React], [Git]))

// === Platforms

// #skill-entry(accent-color, multicol, alignment, skills: ([Supabase], [Fly.io], [Azure], [Cloudflare]))
