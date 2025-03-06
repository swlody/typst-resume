#let meta = toml("../info.toml")

#import "../lib.typ": education-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.education
#let include-icon = meta.personal.include_icons

= #if include-icon [#fa-icon(icon) #h(5pt)] Education

#v(5pt)

#education-entry(
  degree: [B.S. Computer Science, B.A. Physics, Minor Biology],
  date: [2014 - 2018],
  institution: [University of Rochester],
  location: [Rochester, NY],
)
