#let meta = toml("../info.toml")
#import "../lib.typ": skill-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.skills
#let include-icon = meta.personal.include_icons
#let accent-color = meta.layout.accent_color
#let multicol = true
#let alignment = center

= #if include-icon [#fa-icon(icon) #h(5pt)] Skills

#v(0pt)

=== Programming languages

#skill-entry(
  accent-color,
  multicol,
  alignment,
  skills: ([Rust], [C++], [C], [TypeScript], [HTML/CSS], [Python], [C\#]),
)

=== DevOps

#skill-entry(accent-color, multicol, alignment, skills: ([Docker], [Cloud]))

=== Tools

#skill-entry(accent-color, multicol, alignment, skills: ([Git], [Jira], [Confluence], [Slack]))
