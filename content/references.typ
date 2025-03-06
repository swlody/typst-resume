#let meta = toml("../info.toml")
#import "../lib.typ": reference-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.references
#let include-icon = meta.personal.include_icons

= #if include-icon [#fa-icon(icon) #h(5pt)] References

#v(5pt)

#reference-entry(
  name: [Sarah Connor, Resistance Leader],
  company: [Cyberdyne Systems],
  telephone: [+1 (555) 654-3210],
  email: [sarah.connor\@resistance.com],
)

#reference-entry(
  name: [Eldon Tyrell, CEO],
  company: [Tyrell Corporation],
  telephone: [+1 (555) 987-6543],
  email: [eldontyrell\@tyrellcorp.com],
)
