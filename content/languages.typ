#let meta = toml("../info.toml")
#import "../lib.typ": language-entry
#import meta.import.fontawesome: *

#let icon = meta.section.icon.languages
#let include-icon = meta.personal.include_icons

= #if include-icon [#fa-icon(icon) #h(5pt)] Languages

#v(5pt)

#language-entry(language: "English", proficiency: "Native")
#language-entry(language: "Spanish", proficiency: "Fluent")
#language-entry(language: "Machine Code", proficiency: "Fluent")
