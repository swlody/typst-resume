#let meta = toml("../info.toml")
#import "../lib.typ": experience-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.other_experience
#let include-icon = meta.personal.include_icons

= #if include-icon [#fa-icon(icon) #h(5pt)] Other

#v(5pt)

#experience-entry(title: [Combat Training], date: [2029], company: [Resistance], location: [Los Angeles, CA])

