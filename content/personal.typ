#let meta = toml("../info.toml")
#import meta.import.fontawesome: *

#let icon = meta.section.icon.personal
#let include-icon = meta.personal.include_icons

= #if include-icon [#fa-icon(icon) #h(5pt)] Personality

#v(5pt)

- Analytic thinking
- Quality conscious
- Good communicator
- Independent
- Team player
- Preemptive
- Eager to learn
